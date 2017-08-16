function [out] = ORC1(ORCFluid,HFluid,p_H_in,T_H_in,Mdot_H,CFluid, p_C_in,T_C_in,T_ev_wf,T_cd_wf,param)
%% CODE DESCRIPTION
% ORC1 - Thermodynamic model of ORC system
% Van Long LE - long.le-van@outlook.com
% The model inputs are: 
% ORCFluid [string]                    : ORC working fluid
% HFluid [string]                      : Heat source medium
% p_H_in [Pa]                          : Heat source inlet pressure
% T_H_in [K]                           : Heat source inlet temperature
% Mdot_H [kg/s]                        : Heat source mass flow rate
% Cfluid [string]                      : Heat sink medium
% p_C_in [Pa]                          : Heat sink inlet pressure
% T_C_in [K]                           : Heat sink inlet temperature
% param                                : Structure variable containing
% parameter
% 
% The model outputs are: 
% 
% Futher details, contact long.le-van@outlook.com
% Note: The comments might be out of date

%% ADD PATHS
addpath('C:/Users/Louis Le/Documents/GitHub/ThermoCodeLib/Matlab/Components/ThermalEquipments');
addpath('C:/Users/Louis Le/Documents/GitHub/ThermoCodeLib/Matlab/Components/ExpansionCompressionMachines');
addpath('C:/Users/Louis Le/Documents/GitHub/ThermoCodeLib/Matlab/Functions');

%% DEMONSTRATION CASE
if nargin==0
    % Heat source inputs
    HFluid                             = 'INCOMP::T66';
    p_H_in                             = 5e5;
    T_H_in                             = 185+273.15;    
    Mdot_H                             = 15;
    
    % Heat sink inputs
    CFluid                              = 'Water';
    p_C_in                              = 2e5;
    T_C_in                              = 25+273.15;
    
    % ORC inputs
    ORCFluid                            = 'CYCLOPEN';
    T_ev_wf                             = 150+273.15; 
    T_cd_wf                             = 40+273.15;    
    
    % Parameters
    param.SC                            = 5;
    param.SH                            = 10;    
    param.pump.eta_s                    = 0.7;    
    param.threezonehex1.SH              = param.SH;
    param.threezonehex1.DT              = 10;
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
end
tstart = tic;
%% %%%%%%%%%%%%%%%%%%%%%%%%%%% System Modelling%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Determine the mass flow rate of working fluid
Tcrit   = CoolProp.Props1SI(ORCFluid,'Tcrit');
Ttriple = CoolProp.Props1SI(ORCFluid,'Ttriple');

p_ev_wf = CoolProp.PropsSI('P','T',T_ev_wf,'Q',0,ORCFluid);
p_cd_wf = CoolProp.PropsSI('P','T',T_cd_wf,'Q',0,ORCFluid);

%% %%%%%%%%%%%%%%%%%%%%%%%%%Thermodynamic model%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% First assumption for working fluid mass flow rate
Mdot_wf = Mdot_H; % Assumed value of working fluid mass flow rate

%% ORC-feed pump
T_pp_in         = T_cd_wf-param.SC;
h_pp_in         = CoolProp.PropsSI('H','P',p_cd_wf,'T',T_pp_in,ORCFluid);
pump            = pump1(ORCFluid,p_cd_wf,p_ev_wf,h_pp_in,Mdot_wf,param.pump);

%% Three-zone heat exchanger
% For a sizing problem, ORC mass flow rate is often determined within this step

h_H_in = CoolProp.PropsSI('H','P', p_H_in,'T',T_H_in,HFluid);
if(param.threezonehex1.SH==0)
    h_C_out_threezonehex = CoolProp.PropsSI('H','P',p_ev_wf,'Q',1,ORCFluid);    
else
    h_C_out_threezonehex = CoolProp.PropsSI('H','P',p_ev_wf,'T',T_ev_wf+param.threezonehex1.SH,ORCFluid)
end

% % Determining the mass flow rate of working fluid
%     function out = f(x)
%     evaporator = threezonehex1(ORCFluid,x,p_ev_wf,pump.hout,HFluid,Mdot_H,p_H_in,h_H_in,param.threezonehex1);
%     out = evaporator.h_C - h_C_out_threezonehex;
%     end
% 
% fun = @(x) f(x);
% M_dot_wf = fzero(fun,Mdot_H);
% evaporator = threezonehex1(ORCFluid,Mdot_wf,p_ev_wf,pump.hout,HFluid,Mdot_H,p_H_in,h_H_in,param.threezonehex1);

%% Turbine
turbine = turbine1(ORCFluid,p_ev_wf,p_cd_wf,h_C_out_threezonehex,Mdot_wf,param.turbine);

%% Internal heat exchanger
if (CoolProp.PropsSI('T','P',p_cd_wf,'H',turbine.hout,ORCFluid)>CoolProp.PropsSI('T','P',p_ev_wf,'H',pump.hout,ORCFluid))
warning('Temperature of vapor exiting the turbine is not sufficient to preheat the liquid exiting the pump')
end
IHE = singlephasehex(ORCFluid,Mdot_wf,turbine.hout,p_cd_wf,ORCFluid,Mdot_wf,pump.hout,p_ev_wf,param.IHE);

%% Calculate again threezonehex1
% evaporator = threezonehex1(ORCFluid,Mdot_wf,p_ev_wf,IHE.h_C,HFluid,Mdot_H,p_H_in,h_H_in,param.threezonehex1);

% if(param.threezonehex1.SH==0)
%     h_C_out_threezonehex = CoolProp.PropsSI('H','P',p_ev_wf,'Q',1,ORCFluid);    
% else
%     h_C_out_threezonehex = CoolProp.PropsSI('H','P',p_ev_wf,'T',T_ev_wf+param.threezonehex1.SH,ORCFluid);
% end  
% 
% while (abs(evaporator.h_C-h_C_out_threezonehex)>1e-9)
%     Mdot_wf = evaporator.Qdot/(h_C_out_threezonehex-IHE.h_C)
%     evaporator = threezonehex1(ORCFluid,Mdot_wf,p_ev_wf,IHE.h_C,HFluid,Mdot_H,p_H_in,h_H_in,param.threezonehex1);
% end

% Determining the mass flow rate of working fluid
    function out = g(x)
    evaporator = threezonehex1(ORCFluid,x,p_ev_wf,IHE.h_C,HFluid,Mdot_H,p_H_in,h_H_in,param.threezonehex1);
    out = evaporator.h_C - h_C_out_threezonehex
    end

fun = @(x) g(x);
Mdot_wf = fsolve(fun,Mdot_H);
% Mdot_wf = fminbnd(fun,0,50);
evaporator = threezonehex1(ORCFluid,Mdot_wf,p_ev_wf,IHE.h_C,HFluid,Mdot_H,p_H_in,h_H_in,param.threezonehex1)
res = evaporator.h_C - h_C_out_threezonehex

%% Condenser
Mdot_C = Mdot_wf;
h_C_in = CoolProp.PropsSI('H','P',p_C_in,'T',T_C_in,CFluid);

    function out = h(x)
        condenser = threezonehex2(strcat('REFPROP::',CFluid),x,p_C_in, h_C_in, ORCFluid, Mdot_wf,p_cd_wf,IHE.h_H,param.condenser);
        out = condenser.h_H-h_pp_in;
    end
fun = @(x) h(x);
% Mdot_c = fzero(fun,Mdot_wf);

condenser = threezonehex2(CFluid,Mdot_C,p_C_in, h_C_in, ORCFluid, Mdot_wf,p_cd_wf,IHE.h_H,param.condenser);

DELTAh_res_cond = condenser.h_H-h_pp_in;


% while (abs(condenser.h_H-h_pp_in)>1e-6)
%     Mdot_C = Mdot_wf*(IHE.h_H-h_pp_in)/(condenser.h_C-h_C_in);
%     condenser = threezonehex2(CFluid,Mdot_C,p_C_in, h_C_in, ORCFluid, Mdot_wf,p_cd_wf,IHE.h_H,param.condenser);    
% end 

%% Energy balance or resisdual
DELTAQdot_H = Mdot_wf*(evaporator.h_C - IHE.h_C)-Mdot_H*(h_H_in-evaporator.h_H);
DELTAQdot_IHE = Mdot_wf*(turbine.hout-IHE.h_H)-IHE.Qdot;
DELTAWdot_pump = Mdot_wf*(pump.hout-h_pp_in)-pump.Wdot;

%% Thermodynamic simulation results
pump = pump1(ORCFluid,p_cd_wf,p_ev_wf,h_pp_in,Mdot_wf,param.pump);
turbine = turbine1(ORCFluid,p_ev_wf,p_cd_wf,evaporator.h_C,Mdot_wf,param.turbine);

out.eta_I = (turbine.Wdot-pump.Wdot)/evaporator.Qdot;
out.Wdot = (turbine.Wdot-pump.Wdot);
out.eta_II = out.eta_I/(1-T_C_in/T_H_in);


%% *********************************Plot**********************************
% Saturation curves
Ts = linspace(Ttriple,Tcrit);
for i = 1:length(Ts)
    sl(i) = CoolProp.PropsSI('S','T',Ts(i),'Q',0,ORCFluid);
    sv(i) = CoolProp.PropsSI('S','T',Ts(i),'Q',1,ORCFluid);
end

% T-s diagram (organic fluid)
T_wf(1) = T_pp_in;
s_wf(1) = CoolProp.PropsSI('S','P',p_cd_wf,'H',h_pp_in,ORCFluid);
T_wf(2) = CoolProp.PropsSI('T','P',p_ev_wf,'H',pump.hout,ORCFluid);
s_wf(2) = CoolProp.PropsSI('S','P',p_ev_wf,'H',pump.hout,ORCFluid);
T_wf(3) = T_ev_wf;
s_wf(3) = CoolProp.PropsSI('S','P',p_ev_wf,'Q',0,ORCFluid);
T_wf(4) = T_ev_wf;
s_wf(4) = CoolProp.PropsSI('S','P',p_ev_wf,'Q',1,ORCFluid);
T_wf(5) = evaporator.T_C;
s_wf(5) = CoolProp.PropsSI('S','P',p_ev_wf,'H',evaporator.h_C,ORCFluid);
T_wf(6) = CoolProp.PropsSI('T','P',p_cd_wf,'H',turbine.hout,ORCFluid);
s_wf(6) = CoolProp.PropsSI('S','P',p_cd_wf,'H',turbine.hout,ORCFluid);
T_wf(7) = T_cd_wf;
s_wf(7) = CoolProp.PropsSI('S','P',p_cd_wf,'Q',1,ORCFluid);
T_wf(8) = T_cd_wf;
s_wf(8) = CoolProp.PropsSI('S','P',p_cd_wf,'Q',0,ORCFluid);

T_IHE(1) = CoolProp.PropsSI('T','P',p_ev_wf,'H',IHE.h_C,ORCFluid);
s_IHE(1) = CoolProp.PropsSI('S','P',p_ev_wf,'H',IHE.h_C,ORCFluid);
T_IHE(2) = CoolProp.PropsSI('T','P',p_cd_wf,'H',IHE.h_H,ORCFluid);
s_IHE(2) = CoolProp.PropsSI('S','P',p_cd_wf,'H',IHE.h_H,ORCFluid);

% T-s diagram (heat source)
T_h(1) = T_H_in;
s_h(1) = s_wf(5);
T_h(2) = evaporator.T_H_sat_l;
s_h(2) = s_wf(3);
T_h(3) = evaporator.T_H;
s_h(3) = s_IHE(1);

% T-s diagram (heat sink)
T_c(1) = T_C_in;
s_c(1) = s_wf(1);
T_c(2) = condenser.T_C_sat_v;
s_c(2) = s_wf(7);
T_c(3) = condenser.T_C;
s_c(3) = s_IHE(2);

if (param.displayPlot == 1)
figure(1)
hold on;
plot(sl,Ts,'black','lineWidth',2)
plot(sv,Ts,'black','lineWidth',2)
plot(s_wf,T_wf,'-pb','lineWidth',2)
plot(s_h,T_h,'-r', 'lineWidth',2)
plot(s_IHE,T_IHE,'+m', 'lineWidth',2)
plot(s_c,T_c,'b', 'lineWidth',2)
grid on;
xlabel('Entropy, [J/kg-K]', 'fontsize',14, 'fontweight','bold')
ylabel('Temperature, [K]', 'fontsize',14, 'fontweight','bold')
hold off;
end

end