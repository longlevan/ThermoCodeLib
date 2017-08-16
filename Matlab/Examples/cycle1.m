addpath('C:\Users\Louis Le\Documents\GitHub\ThermoCodeLib\Matlab\Components\ExpansionCompressionMachines')
%% Inputs
%Heat source inputs%
ExGasCMI        = 'REFPROP::CO2[0.0854]&Water[0.1634]&Oxygen[0.0248]&Nitrogen[0.7264]';
p_in_f          = 101325; %pressure of exhaust gas%
T_in_f 			= 720+273.15; %nominal temperature of exhaust gas%
T_out_f 		= 620 + 273.15; %exhaust gas outlet temperature%
m_dot_f         = 32; %nominal mass flow rate of exhaust gas in kg/s%
cp_f			= CoolProp.PropsSI('C','T',(T_in_f+T_out_f)/2,'P',p_in_f,ExGasCMI);
Q_dot_f         = m_dot_f*cp_f*(T_in_f-T_out_f);

%ORC inputs%
ORCfluid 		= 'cyclopentane'; %ORC working fluid%
T_crit_wf		= CoolProp.Props1SI(ORCfluid,'Tcrit'); %critical temperature in K%
P_crit_wf		= CoolProp.Props1SI(ORCfluid,'Pcrit'); %critical pressure in Pa%

T_ev_wf         = 215+273.15;
P_ev_wf         = CoolProp.PropsSI('P','T',T_ev_wf,'Q',0,ORCfluid); %evaporating pressure in Pa%
p_r_ev 			= P_ev_wf/P_crit_wf; 
T_cd_wf         = 50+273.15; %condensing temperature or bubble point temperature at condensing pressure, in K%
P_cd_wf         = CoolProp.PropsSI('P','T',T_cd_wf,'Q',0,ORCfluid); %condensing pressure in Pa%
p_r_cd			= P_cd_wf/P_crit_wf; %reduced condensing pressure%
T_b_wf			= CoolProp.PropsSI('T','P',101325,'Q',0,ORCfluid); %normal boiling point temperature%

%Tubomachinenary inputs%
epsilon_s_tur 	= 0.8 %turbine isentropic efficiency%
eta_gen         = 0.9 %electrical generator efficiency%
epsilon_s_pp 	= 0.7 %pump isentropic efficiency%
eta_motor		= 0.9 %electrical motor efficiency%

%Other inputs%
P_atm 			= 101325 %atmospheric pressure in Pa%

%% Equations
m_dot_wf        = 8;%Initialization value%

% Pump
T_in_pp = T_cd_wf - 10;
h_in_pp = CoolProp.PropsSI('H','P',P_cd_wf,'T',T_in_pp,ORCfluid);
pump1(ORCfluid,P_cd_wf,P_ev_wf,h_in_pp,m_dot_wf,epsilon_s_pp)


