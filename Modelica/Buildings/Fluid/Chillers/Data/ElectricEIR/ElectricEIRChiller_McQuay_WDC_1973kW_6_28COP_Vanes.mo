within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_McQuay_WDC_1973kW_6_28COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -1972800,
    COP_nominal =         6.28,
    PLRMin =              0.09,
    PLRMinUnl =           0.09,
    PLRMax =              1.06,
    mEva_flow_nominal =   1000 * 0.04145,
    mCon_flow_nominal =   1000 * 0.09337,
    TEvaLvg_nominal =     273.15 + 8.89,
    TConEnt_nominal =     273.15 + 26.67,
    TEvaLvgMin =          273.15 + 7.22,
    TEvaLvgMax =          273.15 + 12.78,
    TConEntMin =          273.15 + 12.78,
    TConEntMax =          273.15 + 26.67,
    capFunT =             {1.110884E+00,7.376077E-02,-5.957719E-03,-2.861037E-02,-2.129104E-04,2.547028E-03},
    EIRFunT =             {1.097378E+00,-3.018324E-02,-2.792200E-03,-1.252428E-02,2.095232E-04,2.409252E-03},
    EIRFunPLR =           {1.282891E-01,2.722981E-01,6.012232E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller McQuay WDC 1973kW/6.28COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller McQuay WDC 1973kW/6.28COP/Vanes,  !- Name
    1972800,                 !- Reference Capacity {W}
    6.28,                    !- Reference COP {W/W}
    8.89,                    !- Reference Leaving Chilled Water Temperature {C}
    26.67,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.04145,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.09337,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller McQuay WDC 1973kW/6.28COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller McQuay WDC 1973kW/6.28COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller McQuay WDC 1973kW/6.28COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.09,                    !- Minimum Part Load Ratio
    1.06,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.09,                    !- Minimum Unloading Ratio
    Chilled Water Side Inlet Node,  !- Chilled Water Inlet Node Name
    Chilled Water Side Outlet Node,  !- Chilled Water Outlet Node Name
    Condenser Side Inlet Node,  !- Condenser Inlet Node Name
    Condenser Side Outlet Node,  !- Condenser Outlet Node Name
    WaterCooled,             !- Condenser Type
    ,                        !- Condenser Fan Power Ratio {W/W}
    1.0,                     !- Compressor Motor Efficiency
    2.0,                     !- Leaving Chilled Water Lower Temperature Limit {C}
    ConstantFlow,            !- Chiller Flow Mode
    0.0;                     !- Design Heat Recovery Water Flow Rate {m3/s}
</pre>
</html>"));
