function [out] = threezonehex2(CFluid,Mdot_C,p_C_in, h_C_in, HFluid, Mdot_H,p_H_in,h_H_in,param)
%% threezonehex1(CFluid,Mdot_C,p_C_in, h_C_in, HFluid, Mdot_H,p_H_in,h_H_in,param)
% condenser option
% Inputs
% CFluid [string]       : Cold fluid medium
% Mdot_C [kg/s]        : Mass flow rate of cold fluid
% p_C_in [Pa]           : Cold fluid inlet pressure
% h_C_in [J/kg]         : Cold fluid inlet specific enthalpy
% HFluid [string]       : Hot fluid medium
% Mdot_H [kg/s]        : Mass flow rate of hot fluid
% p_H_in [Pa]           : Hot fluid inlet pressure
% h_H_in [J/kg]         : Hot fluid inlet specific enthalpy
% param.DT              : Temperature difference
% param.DPoverP_H       : Pressure drop fraction of hot fluid
% param.DPoverP_C       : Pressure drop fraction of cold fluid
%%
if nargin == 0
    HFluid          = 'Cyclopentane';
    Mdot_H          = 7.611243;
    p_H_in          = 2.647e6;
    h_H_in          = 112645.7;
    CFluid          = 'Water';
    Mdot_C         = 13.313631;
    p_C_in          = 5e5;
    h_C_in          = 575610.2;
    
    param.DT        = 10;% minimal temperature difference
    param.DPoverP_H = 0;
    param.DPoverP_C = 0;    
end
%%
% single phase
T_H_in          = CoolProp.PropsSI('T','P',p_H_in,'H',h_H_in,HFluid);
T_C_in          = CoolProp.PropsSI('T','P',p_C_in,'H',h_C_in,CFluid);

p_H_out 		= p_H_in*(1-param.DPoverP_H);
p_C_out 		= p_C_in*(1-param.DPoverP_C);

h_H_sat_v   = CoolProp.PropsSI('H','P',p_H_in,'Q',1,HFluid);
T_H_sat_v   = CoolProp.PropsSI('T','P',p_H_in,'Q',1,HFluid);

% % start by assuming pinch point at hot fluid outlet
    T_C_out 	= T_H_in - param.DT; % Pinch point is at outlet cold fluid
    h_C_out 	= CoolProp.PropsSI('H','T',T_C_out,'P',p_C_out,CFluid);
    Q_dot 		= Mdot_C*(h_C_out-h_C_in); % heat transfer rate%
    h_H_out 	= h_H_in-Q_dot/Mdot_H;
    T_H_out 	= CoolProp.PropsSI('T','P',p_H_out,'H',h_H_out,HFluid);

    if (h_H_sat_v < h_H_in)
    h_C_sat_v   = h_C_out - Mdot_H*(h_H_in-h_H_sat_v)/Mdot_C;
    T_C_sat_v   = CoolProp.PropsSI('T','P',p_C_in,'H',h_C_sat_v,CFluid);
    DT_min      = min([T_H_out - T_C_in,T_H_sat_v-T_C_sat_v,T_H_in-T_C_out]);
    else
        h_C_sat_v = 999;
        T_C_sat_v = 999;
        DT_min  = min([T_H_out - T_C_in,T_H_in-T_C_out]);
    end
    
    if (DT_min<param.DT) & (h_H_sat_v < h_H_in)
       disp('Pinch point is assumed at vapor saturated point of organic fluid');
       T_C_sat_v = T_H_sat_v-param.DT;
       h_C_sat_v = CoolProp.PropsSI('H','P',p_C_out,'T',T_C_sat_v,CFluid);
       h_H_out   = h_H_sat_v - Mdot_C*(h_C_sat_v-h_C_in)/Mdot_H;
       T_H_out   = CoolProp.PropsSI('T','P',p_H_out,'H',h_H_out,HFluid);
       Q_dot     = Mdot_H*(h_H_in-h_H_out);
       h_C_out   = Q_dot/Mdot_C+h_C_in;
       T_C_out   = CoolProp.PropsSI('T','P',p_C_out,'H',h_C_out,CFluid);       
       DT_min    = min([T_H_out - T_C_in,T_H_sat_v-T_C_sat_v,T_H_in-T_C_out]);        
    end
    
    if (DT_min<param.DT)
       warning('Pinch point is at HOT FLUID OUTLET') 
    end

out.T_C         = T_C_out;
out.h_C         = h_C_out;
out.T_C_sat_v   = T_C_sat_v;
out.T_H_sat_v   = T_H_sat_v;
out.T_H         = T_H_out;
out.h_H         = h_H_out;
out.Qdot        = Q_dot;
out.DTmin       = DT_min;

end