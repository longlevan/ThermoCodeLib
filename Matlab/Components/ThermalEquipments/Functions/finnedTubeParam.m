function [out] = finnedTubeParam(finned_tube,D,L)

if nargin==0
    finned_tube ='finned_tube_5049';
    D           = 28e-3;
    L           =3;
end

if finned_tube == 'finned_tube_5049'
    out.h_f     = 5e-3;
    out.t_f 	= 0.4e-3;
    out.N_fpi   = 9;
end

if finned_tube =='finned_tube_7049'
    out.h_f     = 7e-3;
    out.t_f     = 0.4e-3;
    out.N_fpi   =9;
end

out.D_f         = D+2*out.t_f;
f_spacing       = (25.4e-3)/out.N_fpi;
f_free_spacing  = f_spacing-out.t_f;
A_f             = pi/4*(out.D_f^2-D^2)*2;

n_f             = round(L*out.N_fpi/(25.4e-3));

A_f             = n_f*A_f;
A_root          =(n_f+1)*pi*D*f_free_spacing;
out.A_tot       = A_f+A_root;

end