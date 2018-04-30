within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_York_YK_5465kW_6_94COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -5464900,
    COP_nominal =         6.94,
    PLRMin =              0.14,
    PLRMinUnl =           0.14,
    PLRMax =              1.07,
    mEva_flow_nominal =   1000 * 0.18296,
    mCon_flow_nominal =   1000 * 0.27444,
    TEvaLvg_nominal =     273.15 + 6.67,
    TConEnt_nominal =     273.15 + 26.11,
    TEvaLvgMin =          273.15 + 4.44,
    TEvaLvgMax =          273.15 + 8.89,
    TConEntMin =          273.15 + 15.56,
    TConEntMax =          273.15 + 29.44,
    capFunT =             {1.092441E-01,-1.225892E-01,-2.802873E-03,1.324138E-01,-4.714937E-03,9.205744E-03},
    EIRFunT =             {6.396022E-01,-5.954060E-02,5.884523E-04,3.170651E-02,-5.088216E-04,1.460759E-03},
    EIRFunPLR =           {2.795792E-01,7.872758E-02,6.424321E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller York YK 5465kW/6.94COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller York YK 5465kW/6.94COP/Vanes,  !- Name
    5464900,                 !- Reference Capacity {W}
    6.94,                    !- Reference COP {W/W}
    6.67,                    !- Reference Leaving Chilled Water Temperature {C}
    26.11,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.18296,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.27444,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller York YK 5465kW/6.94COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller York YK 5465kW/6.94COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller York YK 5465kW/6.94COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.14,                    !- Minimum Part Load Ratio
    1.07,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.14,                    !- Minimum Unloading Ratio
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
