function [out] = pump1(Fluid, p_in, p_out, h_in, m_dot, param)
%% CODE DESCRIPTION
% pump1 model
%

%% DEMONSTRATION CASE
if nargin==0
    Fluid       = 'R245fa'; %ORC working fluid
    p_in        = CoolProp.PropsSI('P','T',30+273.15, 'Q',0,Fluid);% condensation pressure
    p_out       = CoolProp.PropsSI('P','T',130+273.15, 'Q',0,Fluid);% evaporating pressure
    h_in        = CoolProp.PropsSI('H','P',p_in,'T',20+273.15,Fluid);% inlet specific enthalpy
    m_dot       = 1; %mass flow rate
    param.eta_s       = 0.7;
end
%% EQUATION
T_in 		= CoolProp.PropsSI('T','P',p_in,'H',h_in,Fluid); %inlet temperature%
rho_in		= CoolProp.PropsSI('D','P',p_in,'H',h_in,Fluid); %inlet density%
mu_in		= CoolProp.PropsSI('V','P',p_in,'H',h_in,strcat('REFPROP::',Fluid)); %inlet dynamic viscosity%
p_sat		= CoolProp.PropsSI('P','T',T_in,'Q',0,Fluid); %saturation pressure at inlet temperature%

if (h_in == CoolProp.PropsSI('H','P',p_in,'Q',0,Fluid)) 
    warning('Pump inlet enthalpy should be lower than the saturation enthalpy of working fluid to advoid the cavitation')
end

NPSH        = ((p_in-p_sat)/(const('g')*rho_in))*3.280839895; %Net Positive Suction Head in foot, 1m = 3.2808399 ft%
if (NPSH<5) 
    warning('Available net positive suction head should be greater than 5 ft to avoid the cavitation. The actual value of NPSH is lower than 5 ft');
end

s_in 		= CoolProp.PropsSI('S','P',p_in,'H',h_in,Fluid);
h_s 		= CoolProp.PropsSI('H','P',p_out,'S',s_in,Fluid);
h_out       = [];
h_out 		= h_in + (h_s - h_in)/param.eta_s;
Wdot		= m_dot*(h_out-h_in);
% OUTPUTS
out.hout       = h_out;
out.Wdot   = Wdot;
end