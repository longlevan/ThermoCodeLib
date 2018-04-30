within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_Carrier_19XL_2057kW_6_05COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -2057200,
    COP_nominal =         6.05,
    PLRMin =              0.28,
    PLRMinUnl =           0.28,
    PLRMax =              1.04,
    mEva_flow_nominal =   1000 * 0.08322,
    mCon_flow_nominal =   1000 * 0.09722,
    TEvaLvg_nominal =     273.15 + 7.78,
    TConEnt_nominal =     273.15 + 23.89,
    TEvaLvgMin =          273.15 + 4.44,
    TEvaLvgMax =          273.15 + 8.89,
    TConEntMin =          273.15 + 12.78,
    TConEntMax =          273.15 + 29.44,
    capFunT =             {7.737452E-01,-1.249478E-02,-3.193419E-03,2.110302E-02,-1.188413E-03,3.820335E-03},
    EIRFunT =             {8.623086E-01,-5.844490E-02,-2.284745E-03,2.469188E-02,-1.022604E-03,3.996523E-03},
    EIRFunPLR =           {4.041274E-01,-3.861525E-01,9.804493E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller Carrier 19XL 2057kW/6.05COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller Carrier 19XL 2057kW/6.05COP/Vanes,  !- Name
    2057200,                 !- Reference Capacity {W}
    6.05,                    !- Reference COP {W/W}
    7.78,                    !- Reference Leaving Chilled Water Temperature {C}
    23.89,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.08322,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.09722,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller Carrier 19XL 2057kW/6.05COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller Carrier 19XL 2057kW/6.05COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller Carrier 19XL 2057kW/6.05COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.28,                    !- Minimum Part Load Ratio
    1.04,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.28,                    !- Minimum Unloading Ratio
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
