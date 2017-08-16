function DELTAT_log = rlmtd(T_hf_su,T_hf_ex,T_cf_su,T_cf_ex)

% Robustness logarithmic temperature difference
% When simulating steady state thermodynamic cycles with acausal equations, e.g. using EES, non-convergence often occurs in the 
% heat exchanger models, particularly whenn three-zones, moving boundaries model is used. This is particularly true in the case of low
% pinch point (i.e. relatively high heat transfer coefficients or exchanger area.): the iteration process can lead to a superposition of both
% temperature profiles (appendix D, PhD theis of Sylvain Quoilin). To advoid this issue, the iterative process should not to be left to the
% solver, and the most of the heat exchanger model should be written using causal equations, allowing conditional statements. The
% iteration scheme of the proposed heat exchanger model is the following:
% 1. The complete temperature profile is defined as an initial value. The heat transfer coefficients are set as parameter or calculated with
% heat transfer correlations (design step or initialize step)
% 2. Using these heat transfer coefficients, the required heat transfer area for each zone (liquid, two-phase, vapor) is calculated with causal
% equations only. This implies using the LMTD method instead of the epsilon-NTU method. The required total heat transfer area is then 
% obtained by summing the computed values for each zone.
% 3. The calculated heat transfer area is compared to the actual heat transfer area. If it is higher, the temperature profile is updated to increase
% the pinch point. If it is lower, the temperature profile is updated to decrease the pinch point. 
% Some failures can occur. To avoid the failures, the LMTD equations are slightly modified to avoid logarithms of negative number. A penalty is
% assigned in terms of required area when this is the case.
%  
% Inputs:
% T_hf_su: inlet temperature of hot fluid (K)
% T_hf_ex: outlet temperature of hot fluid (K)
% T_cf_su: inlet temperature of cold fluid (K)
% T_cf_ex: outlet temperature of cold fluid (K)
%  
% Outputs:
% DELTAT_log: logarithmic mean temperature difference (K)

%% Demonstration case
if nargin==0
    T_hf_su = 6;
    T_hf_ex = 5;
    T_cf_su = 3;
    T_cf_ex = 4;    
end
tstart_rlmtd = tic;                    %Start to evaluate the simulation time
xi = 1E3;
 
if (T_cf_su < T_hf_ex - 1) 
	if (T_cf_ex < T_hf_su-1) 
		if (T_hf_su-T_cf_ex) ~= (T_hf_ex-T_cf_su) 
			DELTAT_log = ((T_hf_su - T_cf_ex) - (T_hf_ex - T_cf_su))/ln((T_hf_su-T_cf_ex)/(T_hf_ex-T_cf_su));
		else
			DELTAT_log = T_hf_su - T_cf_ex;
		end
	else
		DELTAT_log = (T_hf_ex - T_cf_su - 1)/ln(T_hf_ex - T_cf_su) * 1/(1 + xi*(T_cf_ex + 1 - T_hf_su));
	end
else
	if T_cf_ex < T_hf_su-1 
		DELTAT_log = (T_hf_su - T_cf_ex - 1)/ln(T_hf_su - T_cf_ex) * 1/(1+xi*(T_cf_su + 1 - T_hf_ex));
	else
		DELTAT_log = 1/( (1+xi * (T_cf_su + 1 - T_hf_ex)) * (1 + xi*(T_cf_ex + 1 - T_hf_su)));
	end
end
out.time = toc(tstart_rlmtd);

end