function [out] = singlephasehex(HFluid,m_dot_h,h_H_in,p_H_in,CFluid,m_dot_c,h_C_in,p_C_in,param)
%  Heat exchanger model in which two fluids interact with one another. The approach temperature defference is specified.
% In this model, the pinchpoint must occur at either the hot or cold end; this model will not work if there is a chance that the pinchpoint occur within the heat exchanger. 
%  
% Inputs:
% HFluid			: hot fluid string identifier
% m_dot_h		: mass flow rate of hot fluid (kg/s)
% h_H_in			: inlet specific enthalpy of hot fluid (J/kg)
% p_H_in			: inlet pressure of hot fluid (Pa)
% CFluid			: cold fluid string identifier
% m_dot_c		: mass flow rate of cold fluid (kg/s)
% h_C_in			: inlet specific enthalpy of cold fluid (J/kg)
% p_C_in			: inlet pressure of cold fluid (Pa)
% param.DT				: approach temperature difference (K)
% param.DPoverP_H	: pressure drop normalized by absolute pressure on hot side (-)
% param.DPoverP_C	: pressure drop normalized by absolute pressure on cold side (-)
%  
% Outputs:
% h_H_out		: outlet specific enthalpy of hot fluid (J/kg, kJ/kg, or Btu/lbm)
% P_H_out		: outlet pressure of hot fluid (bar, atm, Pa, kPa, MPa)
% h_C_out		: outlet specific enthalpy of cold fluid (J/kg, kJ/kg, or Btu/lbm)
% p_C_out		: outlet pressure of cold fluid (bar, atm, Pa, kPa, MPa)
% Q_dot			: heat transfer rate from hot to cold (W, kW or Btu/hr)
% eff				: effectiveness (-)

if nargin==0
    HFluid = 'Cyclopentane';
    m_dot_h = 1;
    h_H_in = 517564;
    p_H_in = 103829;
    CFluid = 'Cyclopentane';
    m_dot_c = 1;
    h_C_in = -12704;
    p_C_in = 2.647e6;
    param.DT = 10;
    param.DPoverP_H = 0;
    param.DPoverP_C = 0;        
end


T_H_in          = CoolProp.PropsSI('T','P',p_H_in,'H',h_H_in,HFluid);
T_C_in          = CoolProp.PropsSI('T','P',p_C_in,'H',h_C_in,CFluid);

if or((T_H_in<T_C_in), (T_H_in==T_C_in)) 
    warning('Hot side inlet temperature must be greater than cold side inlet temperature');
end

if or((T_H_in-T_C_in<param.DT),(T_H_in-T_C_in==param.DT)) 
 warning('The temperature difference between hot side inlet and cold side inlet must be greater than param.DT')
end

p_H_out 		= p_H_in*(1-param.DPoverP_H);
p_C_out 		= p_C_in*(1-param.DPoverP_C);
 
% start by assuming pinch point at hot end%
T_C_out 		= T_H_in - param.DT;
h_C_out 		= CoolProp.PropsSI('H','T',T_C_out,'P',p_C_out,CFluid);
h_C_out_max 	= CoolProp.PropsSI('H','P',p_C_out,'T',T_H_in,CFluid);

Q_dot 			= m_dot_c*(h_C_out - h_C_in); %heat transfer rate%
Q_dot_max       = m_dot_c*(h_C_out_max - h_C_in);
h_H_out 		= h_H_in - Q_dot/m_dot_h;
T_H_out 		= CoolProp.PropsSI('T','P',p_H_out,'H',h_H_out,HFluid);
eff 			= Q_dot/Q_dot_max; %effectiveness%

if ((T_H_out - T_C_in)<param.DT)
    disp('Pinchpoint must be at the cold end')
	T_H_out 	= T_C_in + param.DT; %outlet temperature on hot side%
	h_H_out 	= CoolProp.PropsSI('H','T',T_H_out,'P',p_H_out,HFluid);
	h_H_out_min = CoolProp.PropsSI('H','P',p_H_out,'T',T_C_in,HFluid);
	Q_dot 		= m_dot_h*(h_H_in-h_H_out); %heat transfer rate%
	Q_dot_max 	= m_dot_h*(h_H_in - h_H_out_min);
	eff 		= Q_dot/Q_dot_max;
	h_C_out 	= h_C_in+Q_dot/m_dot_c;
	T_C_out 	= CoolProp.PropsSI('T','P',p_C_out,'H',h_C_out,CFluid);
end

out.h_H         = h_H_out;
out.p_H         = p_H_out;
out.h_C         = h_C_out;
out.p_C         = p_C_out;
out.Qdot        = Q_dot;
out.eff         = eff;
end