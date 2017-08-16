function out = f(y)
addpath('C:/Users/Louis Le/Documents/GitHub/ThermoCodeLib/Matlab/Components/ThermalEquipments');
HFluid                             = 'INCOMP::T66';
    p_H_in                             = 5e5;
    T_H_in                             = 300+273.15;    
    Mdot_H                             = 15;
    
    % Heat sink inputs
    CFluid                              = 'Air';
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
    param.threezonehex1.DT              = 15;
    param.threezonehex1.DPoverP_H       = 0;
    param.threezonehex1.DPoverP_C    	= 0;    
    param.turbine.eta                   = 0.8;    
    param.IHE.DT                        = 10;
    param.IHE.DPoverP_H                 = 0;
    param.IHE.DPoverP_C                 = 0; 
    param.condenser.DT                  = 10;
    param.condenser.DPoverP_H           = 0;
    param.condenser.DPoverP_C           = 0;
    param.displayPlot                   = 1;  
    
    p_ev_wf = CoolProp.PropsSI('P','T',T_ev_wf,'Q',0,ORCFluid);
    p_cd_wf = CoolProp.PropsSI('P','T',T_cd_wf,'Q',0,ORCFluid);
    pump.hout = -2.4968e+04;
    h_pp_out = pump.hout;
    h_H_in =  5.7561e+05;
    h_C_out_threezonehex =  5.3811e+05
    
    
    function out =f(x)
        evaporator = threezonehex1(ORCFluid,x,p_ev_wf,pump.hout,HFluid,Mdot_H,p_H_in,h_H_in,param.threezonehex1)
        out = evaporator.h_C - y;
    end
    fun = @(x) f(x);
    out = fzero(fun, 15);
    

end
