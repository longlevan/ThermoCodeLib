within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_York_YT_1758kW_5_96COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -1758300,
    COP_nominal =         5.96,
    PLRMin =              0.10,
    PLRMinUnl =           0.10,
    PLRMax =              1.01,
    mEva_flow_nominal =   1000 * 0.06309,
    mCon_flow_nominal =   1000 * 0.06309,
    TEvaLvg_nominal =     273.15 + 5.56,
    TConEnt_nominal =     273.15 + 24.44,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 10.00,
    TConEntMin =          273.15 + 12.78,
    TConEntMax =          273.15 + 24.44,
    capFunT =             {8.492365E-01,5.551947E-02,-2.973138E-04,1.164389E-03,-2.955716E-04,8.464931E-05},
    EIRFunT =             {4.949320E-01,9.099785E-03,-6.935841E-04,3.277452E-02,-3.895481E-04,-5.524011E-04},
    EIRFunPLR =           {2.236154E-01,2.590053E-01,5.169137E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller York YT 1758kW/5.96COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller York YT 1758kW/5.96COP/Vanes,  !- Name
    1758300,                 !- Reference Capacity {W}
    5.96,                    !- Reference COP {W/W}
    5.56,                    !- Reference Leaving Chilled Water Temperature {C}
    24.44,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.06309,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.06309,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller York YT 1758kW/5.96COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller York YT 1758kW/5.96COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller York YT 1758kW/5.96COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.10,                    !- Minimum Part Load Ratio
    1.01,                    !- Maximum Part Load Ratio
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
