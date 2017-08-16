function [out] = turbine1(Fluid,p_in,p_out,h_in,m_dot,param)
%% CODE DESCRIPTION
% turbine1
% 

%% DEMONSTRATION CASE
if nargin==0
    Fluid       = 'Cyclopentane';
    p_in        = 2.6e6;
    p_out       = 103829;
    h_in        = 641074;
    m_dot       =1;
    param.eta   =0.8;
end

%% EQUATION
if (p_out < 1e5) 
    warning('Turbine outlet pressure should be greater than atmospheric pressure')
end

s_in = CoolProp.PropsSI('S','P',p_in,'H',h_in,Fluid);%inlet entropy%

if (s_in < CoolProp.PropsSI('S','P',p_out,'Q',1,Fluid)) 
    warning('This fluid is a wet fluid. A surperheating step is necessary to avoid the droplet formation during expansion step')
end
h_s = CoolProp.PropsSI('H','P',p_out,'S',s_in,Fluid); %isentropic exit enthalpy%

disp('isentropic efficiency is specified')
eta_s 	= param.eta;
h_out	= h_in - eta_s*(h_in - h_s); %actual outlet enthalpy%
W_dot 	= m_dot*(h_in - h_out); %Power%

out.hout = h_out;
out.Wdot = W_dot;
end