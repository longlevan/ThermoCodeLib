function [out]=ThermosyModel(fluid,F_r, beta,D_i, D_o, tube_e,finned_tube_e, tube_c,finned_tube_c, L_e,L_c,L_a)

%% ADD PATHS
addpath('C:/Users/Louis Le/Documents/GitHub/ThermoCodeLib/Matlab/Components/ThermalEquipments/Functions/');

if nargin == 0
    % Define a demonstration case if ThermosyModel.mat is not executed
    % externally
    
    fluid           = 'Water';
    F_r             = 0.6;
    beta            = pi/2;
    D_i             = 23e-3;
    D_o             = 28e-3;
    tube_e          = 'smooth';
    finned_tube_e   = 'finned_tube_5049';
    tube_c          = 'smooth';
    finned_tube_c   = 'finned_tube_5049';
    L_e             = 3.4;
    L_c             = 1.2;
    L_a             = 0.3;
    
end
tstart_thermosy = tic; % start to count computational time

%% thermosyphon calculation
L_eff   = L_a+(L_e+L_c)/2; % thermosyphon effective length

if tube_e == 'smooth'
    A_e_o = pi*L_e*D_o;
else
    finnedTubeE = finnedTubeParam(finned_tube_e,D_o,L_e);
    N_fpm_e = finnedTubeE.N_fpi/(25.4e-3);
    A_e_o = finnedTubeE.A_tot;
end

if tube_c == 'smooth'
    A_c_o = pi*L_c*D_o;
else
    finnedTubeC = finnedTubeParam(finned_tube_c,D_o,L_c); 
    N_fpm_c = finnedTubeC.N_fpi/(25.4e-3)
    A_c_o = finnedTubeC.A_tot
end
out=[L_eff,A_c_o,A_e_o];


out.time = toc(tstart_thermosy);
end 