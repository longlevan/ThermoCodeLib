within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_York_YT_1758kW_6_26COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -1758300,
    COP_nominal =         6.26,
    PLRMin =              0.10,
    PLRMinUnl =           0.10,
    PLRMax =              1.14,
    mEva_flow_nominal =   1000 * 0.06309,
    mCon_flow_nominal =   1000 * 0.06309,
    TEvaLvg_nominal =     273.15 + 5.56,
    TConEnt_nominal =     273.15 + 24.44,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 10.00,
    TConEntMin =          273.15 + 12.78,
    TConEntMax =          273.15 + 24.44,
    capFunT =             {8.975936E-01,-1.459740E-02,3.647187E-03,3.202545E-02,-1.190379E-03,3.297810E-04},
    EIRFunT =             {2.311197E-01,9.581517E-02,-5.672726E-03,2.766035E-02,-1.411214E-04,-1.011216E-03},
    EIRFunPLR =           {1.720545E-01,5.598164E-01,2.626117E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller York YT 1758kW/6.26COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller York YT 1758kW/6.26COP/Vanes,  !- Name
    1758300,                 !- Reference Capacity {W}
    6.26,                    !- Reference COP {W/W}
    5.56,                    !- Reference Leaving Chilled Water Temperature {C}
    24.44,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.06309,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.06309,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller York YT 1758kW/6.26COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller York YT 1758kW/6.26COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller York YT 1758kW/6.26COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.10,                    !- Minimum Part Load Ratio
    1.14,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.10,                    !- Minimum Unloading Ratio
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
