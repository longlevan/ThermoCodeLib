within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_Trane_CVHF_1758kW_5_96COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -1758300,
    COP_nominal =         5.96,
    PLRMin =              0.20,
    PLRMinUnl =           0.20,
    PLRMax =              1.02,
    mEva_flow_nominal =   1000 * 0.06309,
    mCon_flow_nominal =   1000 * 0.06309,
    TEvaLvg_nominal =     273.15 + 5.56,
    TConEnt_nominal =     273.15 + 24.44,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 10.00,
    TConEntMin =          273.15 + 12.78,
    TConEntMax =          273.15 + 24.44,
    capFunT =             {1.074211E+00,7.710761E-03,-3.166770E-03,-1.868765E-02,1.273866E-04,2.744586E-03},
    EIRFunT =             {4.910329E-01,-9.895115E-02,4.257871E-03,5.433817E-02,-8.184909E-04,6.178810E-04},
    EIRFunPLR =           {3.694797E-01,9.551656E-02,5.347291E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller Trane CVHF 1758kW/5.96COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller Trane CVHF 1758kW/5.96COP/Vanes,  !- Name
    1758300,                 !- Reference Capacity {W}
    5.96,                    !- Reference COP {W/W}
    5.56,                    !- Reference Leaving Chilled Water Temperature {C}
    24.44,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.06309,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.06309,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller Trane CVHF 1758kW/5.96COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller Trane CVHF 1758kW/5.96COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller Trane CVHF 1758kW/5.96COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.20,                    !- Minimum Part Load Ratio
    1.02,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.20,                    !- Minimum Unloading Ratio
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
