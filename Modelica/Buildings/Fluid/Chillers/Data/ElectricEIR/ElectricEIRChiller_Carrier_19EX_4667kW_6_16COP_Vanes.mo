within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_Carrier_19EX_4667kW_6_16COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -4666600,
    COP_nominal =         6.16,
    PLRMin =              0.40,
    PLRMinUnl =           0.40,
    PLRMax =              1.04,
    mEva_flow_nominal =   1000 * 0.19558,
    mCon_flow_nominal =   1000 * 0.24605,
    TEvaLvg_nominal =     273.15 + 6.67,
    TConEnt_nominal =     273.15 + 26.67,
    TEvaLvgMin =          273.15 + 4.44,
    TEvaLvgMax =          273.15 + 7.78,
    TConEntMin =          273.15 + 12.78,
    TConEntMax =          273.15 + 26.67,
    capFunT =             {4.084496E-01,-4.396326E-02,-2.112120E-03,8.225310E-02,-3.066058E-03,5.257550E-03},
    EIRFunT =             {5.214788E-01,-8.218594E-03,-3.068358E-05,2.152332E-02,1.203908E-04,-7.167755E-04},
    EIRFunPLR =           {3.771252E-01,2.854188E-02,5.928670E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller Carrier 19EX 4667kW/6.16COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller Carrier 19EX 4667kW/6.16COP/Vanes,  !- Name
    4666600,                 !- Reference Capacity {W}
    6.16,                    !- Reference COP {W/W}
    6.67,                    !- Reference Leaving Chilled Water Temperature {C}
    26.67,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.19558,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.24605,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller Carrier 19EX 4667kW/6.16COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller Carrier 19EX 4667kW/6.16COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller Carrier 19EX 4667kW/6.16COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.40,                    !- Minimum Part Load Ratio
    1.04,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.40,                    !- Minimum Unloading Ratio
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
