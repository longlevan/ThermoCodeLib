within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_York_YT_2110kW_7_15COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -2110000,
    COP_nominal =         7.15,
    PLRMin =              0.10,
    PLRMinUnl =           0.10,
    PLRMax =              1.04,
    mEva_flow_nominal =   1000 * 0.06057,
    mCon_flow_nominal =   1000 * 0.09464,
    TEvaLvg_nominal =     273.15 + 7.22,
    TConEnt_nominal =     273.15 + 23.89,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 8.89,
    TConEntMin =          273.15 + 12.78,
    TConEntMax =          273.15 + 29.44,
    capFunT =             {5.359238E-01,1.785857E-02,1.579272E-03,4.522868E-02,-1.632172E-03,6.008061E-04},
    EIRFunT =             {6.270855E-01,-4.119654E-02,1.327107E-03,2.661446E-02,-1.856827E-04,5.094942E-04},
    EIRFunPLR =           {2.469187E-01,1.862690E-01,5.660904E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller York YT 2110kW/7.15COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller York YT 2110kW/7.15COP/Vanes,  !- Name
    2110000,                 !- Reference Capacity {W}
    7.15,                    !- Reference COP {W/W}
    7.22,                    !- Reference Leaving Chilled Water Temperature {C}
    23.89,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.06057,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.09464,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller York YT 2110kW/7.15COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller York YT 2110kW/7.15COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller York YT 2110kW/7.15COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.10,                    !- Minimum Part Load Ratio
    1.04,                    !- Maximum Part Load Ratio
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
