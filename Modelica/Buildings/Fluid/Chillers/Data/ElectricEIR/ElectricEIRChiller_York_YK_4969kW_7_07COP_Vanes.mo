within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_York_YK_4969kW_7_07COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -4969000,
    COP_nominal =         7.07,
    PLRMin =              0.16,
    PLRMinUnl =           0.16,
    PLRMax =              1.06,
    mEva_flow_nominal =   1000 * 0.17665,
    mCon_flow_nominal =   1000 * 0.26498,
    TEvaLvg_nominal =     273.15 + 6.67,
    TConEnt_nominal =     273.15 + 26.11,
    TEvaLvgMin =          273.15 + 4.44,
    TEvaLvgMax =          273.15 + 8.89,
    TConEntMin =          273.15 + 15.56,
    TConEntMax =          273.15 + 29.44,
    capFunT =             {1.803605E-01,-9.685535E-02,-5.831135E-03,1.341596E-01,-5.279908E-03,1.045372E-02},
    EIRFunT =             {7.220087E-01,-4.480691E-02,9.621038E-06,2.084835E-02,-2.615973E-04,1.188407E-03},
    EIRFunPLR =           {2.308102E-01,1.802734E-01,5.894894E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller York YK 4969kW/7.07COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller York YK 4969kW/7.07COP/Vanes,  !- Name
    4969000,                 !- Reference Capacity {W}
    7.07,                    !- Reference COP {W/W}
    6.67,                    !- Reference Leaving Chilled Water Temperature {C}
    26.11,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.17665,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.26498,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller York YK 4969kW/7.07COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller York YK 4969kW/7.07COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller York YK 4969kW/7.07COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.16,                    !- Minimum Part Load Ratio
    1.06,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.16,                    !- Minimum Unloading Ratio
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
