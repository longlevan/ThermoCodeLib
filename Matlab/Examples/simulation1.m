%% INPUTS, PARAMETERS
HFluid                             = 'INCOMP::T66';
p_H_in                             = 5e5;
T_H_in                             = 190+273.15;    
Mdot_H                             = 15;
    
% Heat sink inputs
CFluid                              = 'WATER';
p_C_in                              = 2e5;
T_C_in                              = 25+273.15;
    
% ORC inputs
ORCFluid                            = 'PENTANE';
T_ev_wf                             = 150+273.15; 
T_cd_wf                             = 40+273.15;    
    
% Parameters
param.SC                            = 5;
param.SH                            = 10;    
param.pump.eta_s                    = 0.7;    
param.threezonehex1.SH              = param.SH;
param.threezonehex1.DT              = 15;
param.threezonehex1.DPoverP_H       = 0;
param.threezonehex1.DPoverP_C    	= 0;    
param.turbine.eta                   = 0.8;    
param.IHE.DT                        = 10;
param.IHE.DPoverP_H                 = 0;
param.IHE.DPoverP_C                 = 0; 
param.condenser.DT                  = 5;
param.condenser.DPoverP_H           = 0;
param.condenser.DPoverP_C           = 0; 
param.displayPlot                   = 1;
%% EQUATION
h_H_in = CoolProp.PropsSI('H','P', p_H_in, 'T',T_H_in,HFluid);
ORC = ORC1(ORCFluid,HFluid,p_H_in,T_H_in,Mdot_H,CFluid, p_C_in,T_C_in,T_ev_wf,T_cd_wf,param)




 

