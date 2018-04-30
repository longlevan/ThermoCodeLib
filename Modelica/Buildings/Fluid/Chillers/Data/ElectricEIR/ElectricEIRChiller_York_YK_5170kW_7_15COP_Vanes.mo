within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_York_YK_5170kW_7_15COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -5169500,
    COP_nominal =         7.15,
    PLRMin =              0.15,
    PLRMinUnl =           0.15,
    PLRMax =              1.08,
    mEva_flow_nominal =   1000 * 0.17665,
    mCon_flow_nominal =   1000 * 0.26498,
    TEvaLvg_nominal =     273.15 + 6.67,
    TConEnt_nominal =     273.15 + 26.11,
    TEvaLvgMin =          273.15 + 4.44,
    TEvaLvgMax =          273.15 + 8.89,
    TConEntMin =          273.15 + 15.56,
    TConEntMax =          273.15 + 29.44,
    capFunT =             {1.675697E-01,-1.191228E-01,-4.328384E-03,1.355905E-01,-5.171251E-03,1.039840E-02},
    EIRFunT =             {5.894383E-01,-2.926530E-02,-1.900238E-03,2.849479E-02,-5.105015E-04,1.702334E-03},
    EIRFunPLR =           {2.497273E-01,1.011288E-01,6.499847E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller York YK 5170kW/7.15COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller York YK 5170kW/7.15COP/Vanes,  !- Name
    5169500,                 !- Reference Capacity {W}
    7.15,                    !- Reference COP {W/W}
    6.67,                    !- Reference Leaving Chilled Water Temperature {C}
    26.11,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.17665,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.26498,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller York YK 5170kW/7.15COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller York YK 5170kW/7.15COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller York YK 5170kW/7.15COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.15,                    !- Minimum Part Load Ratio
    1.08,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.15,                    !- Minimum Unloading Ratio
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
