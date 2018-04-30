within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_York_YS_781kW_5_42COP_Valve =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -780700,
    COP_nominal =         5.42,
    PLRMin =              0.09,
    PLRMinUnl =           0.09,
    PLRMax =              1.01,
    mEva_flow_nominal =   1000 * 0.01893,
    mCon_flow_nominal =   1000 * 0.03785,
    TEvaLvg_nominal =     273.15 + 6.67,
    TConLvg_nominal =     273.15 + 35.29,
    TEvaLvgMin =          273.15 + 4.44,
    TEvaLvgMax =          273.15 + 8.89,
    TConLvgMin =          273.15 + 21.31,
    TConLvgMax =          273.15 + 41.08,
    capFunT =             {1.033403E+00,3.515774E-02,4.288264E-04,-5.737406E-03,-2.647149E-05,-2.222927E-04},
    EIRFunT =             {4.008316E-01,-6.141937E-03,8.113800E-04,5.982224E-03,5.345503E-04,-1.142919E-03},
    EIRFunPLR =           {5.519460E-01,-1.406889E-02,3.843199E-06,7.950267E-02,8.798848E-01,1.379480E-02,0.000000E+00,-5.070156E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0) "ReformEIRChiller York YS 781kW/5.42COP/Valve"
  annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller York YS 781kW/5.42COP/Valve,  !- Name
    780700,                  !- Reference Capacity {W}
    5.42,                    !- Reference COP {W/W}
    6.67,                    !- Reference Leaving Chilled Water Temperature {C}
    35.29,                   !- Reference Leaving Condenser Water Temperature {C}
    0.01893,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.03785,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller York YS 781kW/5.42COP/Valve CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller York YS 781kW/5.42COP/Valve EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller York YS 781kW/5.42COP/Valve EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.09,                    !- Minimum Part Load Ratio
    1.01,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.09,                    !- Minimum Unloading Ratio
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
