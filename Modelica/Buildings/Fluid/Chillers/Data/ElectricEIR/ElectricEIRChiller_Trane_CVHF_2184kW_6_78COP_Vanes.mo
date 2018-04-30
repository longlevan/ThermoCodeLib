within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_Trane_CVHF_2184kW_6_78COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -2183800,
    COP_nominal =         6.78,
    PLRMin =              0.09,
    PLRMinUnl =           0.09,
    PLRMax =              1.01,
    mEva_flow_nominal =   1000 * 0.04883,
    mCon_flow_nominal =   1000 * 0.05142,
    TEvaLvg_nominal =     273.15 + 7.78,
    TConEnt_nominal =     273.15 + 23.89,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 10.00,
    TConEntMin =          273.15 + 18.33,
    TConEntMax =          273.15 + 23.89,
    capFunT =             {1.235680E+00,2.213527E-02,-1.770186E-03,-1.131594E-02,-5.008696E-04,1.356522E-03},
    EIRFunT =             {8.877947E-01,-1.334886E-02,1.689581E-03,-1.599710E-03,7.884945E-04,-1.584900E-03},
    EIRFunPLR =           {8.942647E-02,5.249540E-01,3.850801E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller Trane CVHF 2184kW/6.78COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller Trane CVHF 2184kW/6.78COP/Vanes,  !- Name
    2183800,                 !- Reference Capacity {W}
    6.78,                    !- Reference COP {W/W}
    7.78,                    !- Reference Leaving Chilled Water Temperature {C}
    23.89,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.04883,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.05142,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller Trane CVHF 2184kW/6.78COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller Trane CVHF 2184kW/6.78COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller Trane CVHF 2184kW/6.78COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.09,                    !- Minimum Part Load Ratio
    1.01,                    !- Maximum Part Load Ratio
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
