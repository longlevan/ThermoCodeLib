function [out] = threezonehex1(CFluid,m_dot_c,p_C_in, h_C_in, HFluid, m_dot_h,p_H_in,h_H_in,param)
%% CODE DESCRIPTION
% threezonehex1(CFluid,m_dot_c,p_C_in, h_C_in, HFluid, m_dot_h,p_H_in,h_H_in,param)
% Inputs
% CFluid [string]       : Cold fluid medium
% m_dot_c [kg/s]        : Mass flow rate of cold fluid
% p_C_in [Pa]           : Cold fluid inlet pressure
% h_C_in [J/kg]         : Cold fluid inlet specific enthalpy
% HFluid [string]       : Hot fluid medium
% m_dot_h [kg/s]        : Mass flow rate of hot fluid
% p_H_in [Pa]           : Hot fluid inlet pressure
% h_H_in [J/kg]         : Hot fluid inlet specific enthalpy
% param.DT              : Temperature difference
% param.SH [K]          : Superheating degree
% param.DPoverP_H       : Pressure drop fraction of hot fluid
% param.DPoverP_C       : Pressure drop fraction of cold fluid
% 
% Ouputs


%% DEMONSTRATION CASE
if nargin == 0
    CFluid          = 'Cyclopentane';
    m_dot_c         = 7.611243;
    p_C_in          = 2.647e6;
    h_C_in          = 112645.7;
    HFluid          = 'INCOMP::T66';
    m_dot_h         = 13.313631;
    p_H_in          = 5e5;
    h_H_in          = 575610.2;
    
    param.DT        = 36;% minimal temperature difference
    param.SH        = 0;% superheating degree
    param.DPoverP_H = 0;
    param.DPoverP_C = 0;    
end
%% EQUATION
T_H_max         = CoolProp.Props1SI('Tmax',HFluid);
T_H_min         = CoolProp.Props1SI('Tmin',HFluid);

T_C_max         = CoolProp.Props1SI('Tmax',CFluid);
T_C_min         = CoolProp.Props1SI('Tmin',CFluid);

T_H_in          = CoolProp.PropsSI('T','P',p_H_in,'H',h_H_in,HFluid);
T_C_in          = CoolProp.PropsSI('T','P',p_C_in,'H',h_C_in,CFluid);

p_H_out 		= p_H_in*(1-param.DPoverP_H);
p_C_out 		= p_C_in*(1-param.DPoverP_C);

%%

% T_H_out         = T_H_in - 50;
% h_H_out         = CoolProp.PropsSI('H','P',p_H_out,'T',T_H_out,HFluid);
% 
% h_C_out         = Mdot_H*(h_H_in-h_H_out)/Mdot_C + h_C_in;
% T_C_out         = CoolProp.PropsSI('T','P',p_C_out,'H',h_C_out,CFluid);
% 
% N_loop          = 100;
% 
% DQdot           = Mdot_H*(h_H_in-h_H_out)/N_loop;
% h_H(1)          = h_H_out;
% T_H(1)          = T_H_out;
% 
% h_C(1)          = h_C_in;
% T_C(1)          = T_C_in;
% 
% for i = 2:N_loop+1
%     
%     h_H(i) = DQdot/Mdot_H - h_H(i-1)
%     T_H(i) = CoolProp.PropsSI('T','P',p_H_in,'H',h_H(i),HFluid);
%     
%     h_C(i) = DQdot/Mdot_C - h_C(i-1)
%     T_C(i) = CoolProp.PropsSI('T','P',p_C_in,'H',h_C(i),CFluid);
%     DT(i)  = T_H(i)-T_C(i)
%     
% end


% start by assuming pinch point at hot fluid outlet
    T_H_out 	= T_C_in + param.DT; %outlet temperature on hot side%
    h_H_out 	= CoolProp.PropsSI('H','T',T_H_out,'P',p_H_out,HFluid);
    Q_dot       = m_dot_h*(h_H_in-h_H_out); %heat transfer rate%
    h_C_out 	= h_C_in+Q_dot/m_dot_c;
    T_C_out 	= CoolProp.PropsSI('T','P',p_C_out,'H',h_C_out,CFluid);
    
    h_C_sat_l   = CoolProp.PropsSI('H','P',p_C_out,'Q',0,CFluid);
    T_C_sat_l   = CoolProp.PropsSI('T','P',p_C_out,'Q',0,CFluid);
    h_H_sat_l   = m_dot_c*(h_C_sat_l-h_C_in)/m_dot_h+h_H_out;
    T_H_sat_l   = CoolProp.PropsSI('T','P',p_H_in,'H',h_H_sat_l,HFluid);
    DT_min      = min([T_H_out - T_C_in,T_H_sat_l-T_C_sat_l,T_H_in-T_C_out]);
    
    if (DT_min<param.DT)
       disp('Pinch point is at liquid saturated point of organic fluid');
       T_H_sat_l = T_C_sat_l+param.DT;
       h_H_sat_l = CoolProp.PropsSI('H','P',p_H_in,'T',T_H_sat_l,HFluid);
       h_H_out   = h_H_sat_l - m_dot_c*(h_C_sat_l-h_C_in)/m_dot_h;
       T_H_out   = CoolProp.PropsSI('T','P',p_H_out,'H',h_H_out,HFluid);
       Q_dot     = m_dot_h*(h_H_in-h_H_out);
       h_C_out   = Q_dot/m_dot_c+h_C_in;
       T_C_out   = CoolProp.PropsSI('T','P',p_C_out,'H',h_C_out,CFluid);       
       DT_min    = min([T_H_out - T_C_in,T_H_sat_l-T_C_sat_l,T_H_in-T_C_out]);        
    end
    
    if (DT_min<param.DT)
       warning('Pinch point is at hot inlet') 
    end
    
% Outputs
out.T_C         = T_C_out;
out.h_C         = h_C_out;
out.T_C_sat_l   = T_C_sat_l;
out.T_H_sat_l   = T_H_sat_l;
out.T_H         = T_H_out;
out.h_H         = h_H_out;
out.Qdot        = Q_dot;
out.DTmin       = DT_min;
end