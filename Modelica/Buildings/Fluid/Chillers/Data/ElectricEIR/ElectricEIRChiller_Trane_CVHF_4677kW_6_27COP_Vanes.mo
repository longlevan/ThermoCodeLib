within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_Trane_CVHF_4677kW_6_27COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -4677100,
    COP_nominal =         6.27,
    PLRMin =              0.41,
    PLRMinUnl =           0.41,
    PLRMax =              1.03,
    mEva_flow_nominal =   1000 * 0.20138,
    mCon_flow_nominal =   1000 * 0.24605,
    TEvaLvg_nominal =     273.15 + 6.67,
    TConEnt_nominal =     273.15 + 26.67,
    TEvaLvgMin =          273.15 + 4.44,
    TEvaLvgMax =          273.15 + 7.78,
    TConEntMin =          273.15 + 12.78,
    TConEntMax =          273.15 + 26.67,
    capFunT =             {8.449416E-01,-2.116553E-02,6.121458E-03,7.120879E-03,-1.798959E-04,-1.349219E-04},
    EIRFunT =             {8.283132E-01,-3.030491E-02,4.164965E-03,-3.278448E-03,6.762508E-04,-1.107762E-03},
    EIRFunPLR =           {3.531562E-01,-2.126229E-01,8.597400E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller Trane CVHF 4677kW/6.27COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller Trane CVHF 4677kW/6.27COP/Vanes,  !- Name
    4677100,                 !- Reference Capacity {W}
    6.27,                    !- Reference COP {W/W}
    6.67,                    !- Reference Leaving Chilled Water Temperature {C}
    26.67,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.20138,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.24605,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller Trane CVHF 4677kW/6.27COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller Trane CVHF 4677kW/6.27COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller Trane CVHF 4677kW/6.27COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.41,                    !- Minimum Part Load Ratio
    1.03,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.41,                    !- Minimum Unloading Ratio
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
