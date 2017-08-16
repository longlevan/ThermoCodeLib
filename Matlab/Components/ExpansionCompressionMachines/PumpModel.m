function [out,TS]=PumpModel(P_su,h_su,P_ex,fluid,N_pp,param)
%% Code Description
% The model is took from ORCmKit library
%
% PumpModel is a single matlab code implementing three difference modelling
% approaches to simulate a volumetric pump

% inputs
% - param: structure variable containing the model paramters

% outputs
% - out: a structure variable which includes 

% - TS: a structure variable which contains the vectors of temperature
% and entropy of the fluid (useful to generate a Ts diagram when modeling 
% the whole ORC system

% nargin: "number of arguments in"
if nargin ==0
    % Define a demonstration case if PumpModel.mat is not excecuted
    % externally
    fluid = 'R245fa';                   % working fluid
    P_su = 4.0001e5;                    % supply pressure   [Pa]
    P_ex = 3.651e6*0.9;                 % exhaust pressure  [Pa]
    h_su = 2.667e5;                     % supply enthalpy   [J/kg-K]
    N_pp = 1500;                        % rotational speed  [rpm]
    param.modelType = 'CstEff';         % type of model     [CstEff, PolEff, SemiEmp]
    param.displayResults = 1;           % Flag to control the result display [0/1]
    switch param.modelType
        case 'CstEff'
            param.V_s = 1e-6;           % Machine swepts volum  [m^3]
            param.V = 1.4e-3;           % Volume inside the pump
            param.epsilon_is = 0.5;     % Cst isentropic effciiency [-]
            param.epsilon_vl = 0.8;     % Cst volumetric efficiency [-]
        case 'PolEff'
            param.V_s = 1e-6;
            param.V = 1.4e-3;
        case 'SemiEmp'
            param.V_s = 1e-6;
            param.V = 1.4e-3;        
    end
end
tstart_pp = tic;                        % start to evaluate the simulation time

end