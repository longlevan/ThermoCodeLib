within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_McQuay_WDC_1973kW_6_28COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -1972800,
    COP_nominal =         6.28,
    PLRMin =              0.09,
    PLRMinUnl =           0.09,
    PLRMax =              1.06,
    mEva_flow_nominal =   1000 * 0.04145,
    mCon_flow_nominal =   1000 * 0.09337,
    TEvaLvg_nominal =     273.15 + 8.89,
    TConLvg_nominal =     273.15 + 32.53,
    TEvaLvgMin =          273.15 + 7.22,
    TEvaLvgMax =          273.15 + 12.78,
    TConLvgMin =          273.15 + 19.36,
    TConLvgMax =          273.15 + 32.81,
    capFunT =             {1.327385E+00,5.589128E-02,-6.418354E-03,-2.827763E-02,-2.655572E-04,2.996574E-03},
    EIRFunT =             {1.179827E+00,-5.349290E-02,-2.095113E-03,-1.285812E-02,2.267511E-04,2.197542E-03},
    EIRFunPLR =           {-9.986603E-01,7.542346E-02,-5.753431E-05,6.665711E-02,2.154745E+00,-7.250027E-02,0.000000E+00,-2.590669E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller McQuay WDC 1973kW/6.28COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller McQuay WDC 1973kW/6.28COP/Vanes,  !- Name
    1972800,                 !- Reference Capacity {W}
    6.28,                    !- Reference COP {W/W}
    8.89,                    !- Reference Leaving Chilled Water Temperature {C}
    32.53,                   !- Reference Leaving Condenser Water Temperature {C}
    0.04145,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.09337,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller McQuay WDC 1973kW/6.28COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller McQuay WDC 1973kW/6.28COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller McQuay WDC 1973kW/6.28COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.09,                    !- Minimum Part Load Ratio
    1.06,                    !- Maximum Part Load Ratio
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
