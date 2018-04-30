within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_York_YK_1881kW_6_53COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -1881400,
    COP_nominal =         6.53,
    PLRMin =              0.19,
    PLRMinUnl =           0.19,
    PLRMax =              1.03,
    mEva_flow_nominal =   1000 * 0.04397,
    mCon_flow_nominal =   1000 * 0.1041,
    TEvaLvg_nominal =     273.15 + 8.89,
    TConLvg_nominal =     273.15 + 31.65,
    TEvaLvgMin =          273.15 + 7.22,
    TEvaLvgMax =          273.15 + 12.78,
    TConLvgMin =          273.15 + 15.00,
    TConLvgMax =          273.15 + 32.45,
    capFunT =             {8.031671E-01,3.618657E-02,-1.027472E-03,1.237132E-02,-7.469842E-04,1.123058E-03},
    EIRFunT =             {4.262865E-01,4.727402E-02,-1.347198E-03,4.334960E-03,5.282605E-04,-1.449676E-03},
    EIRFunPLR =           {2.470999E-01,-4.530708E-03,2.522038E-05,-5.464802E-01,2.572647E+00,3.398388E-03,0.000000E+00,-1.261128E+00,0.000000E+00,0.000000E+00},
    etaMotor =            1.0) "ReformEIRChiller York YK 1881kW/6.53COP/Vanes"
  annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller York YK 1881kW/6.53COP/Vanes,  !- Name
    1881400,                 !- Reference Capacity {W}
    6.53,                    !- Reference COP {W/W}
    8.89,                    !- Reference Leaving Chilled Water Temperature {C}
    31.65,                   !- Reference Leaving Condenser Water Temperature {C}
    0.04397,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.1041,                  !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller York YK 1881kW/6.53COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller York YK 1881kW/6.53COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller York YK 1881kW/6.53COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.19,                    !- Minimum Part Load Ratio
    1.03,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.19,                    !- Minimum Unloading Ratio
    Chilled Water Side Inlet Node,  !- Chilled Water Inlet Node Name
    Chilled Water Side Outlet Node,  !- Chilled Water Outlet Node Name
    Condenser Side Inlet Node,  !- Condenser Inlet Node Name
    Condenser Side Outlet Node,  !- Condenser Outlet Node Name
    1.0,                     !- Compressor Motor Efficiency
    2.0,                     !- Leaving Chilled Water Lower Temperature Limit {C}
    ConstantFlow,            !- Chiller Flow Mode Type
    0.0;                     !- Design Heat Recovery Water Flow Rate {m3/s}
</pre>
</html>"));
