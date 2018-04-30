within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_York_YT_1090kW_7_57COP_VSD =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -1090100,
    COP_nominal =         7.57,
    PLRMin =              0.14,
    PLRMinUnl =           0.14,
    PLRMax =              1.02,
    mEva_flow_nominal =   1000 * 0.06782,
    mCon_flow_nominal =   1000 * 0.05142,
    TEvaLvg_nominal =     273.15 + 6.67,
    TConLvg_nominal =     273.15 + 28.52,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 10.00,
    TConLvgMin =          273.15 + 19.00,
    TConLvgMax =          273.15 + 30.79,
    capFunT =             {5.432784E-01,4.854908E-02,-8.778732E-04,2.814444E-02,-9.314140E-04,8.240584E-04},
    EIRFunT =             {8.635874E-01,-6.482460E-02,-2.524813E-04,2.842929E-02,-4.007377E-04,1.830138E-03},
    EIRFunPLR =           {-1.594094E+00,1.294337E-01,-2.100100E-04,1.659018E+00,-2.605622E+00,-1.199783E-01,0.000000E+00,3.435191E+00,0.000000E+00,0.000000E+00},
    etaMotor =            1.0) "ReformEIRChiller York YT 1090kW/7.57COP/VSD"
  annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller York YT 1090kW/7.57COP/VSD,  !- Name
    1090100,                 !- Reference Capacity {W}
    7.57,                    !- Reference COP {W/W}
    6.67,                    !- Reference Leaving Chilled Water Temperature {C}
    28.52,                   !- Reference Leaving Condenser Water Temperature {C}
    0.06782,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.05142,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller York YT 1090kW/7.57COP/VSD CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller York YT 1090kW/7.57COP/VSD EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller York YT 1090kW/7.57COP/VSD EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.14,                    !- Minimum Part Load Ratio
    1.02,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.14,                    !- Minimum Unloading Ratio
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
