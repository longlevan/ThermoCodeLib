within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_York_YK_1881kW_6_53COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -1881400,
    COP_nominal =         6.53,
    PLRMin =              0.19,
    PLRMinUnl =           0.19,
    PLRMax =              1.03,
    mEva_flow_nominal =   1000 * 0.04397,
    mCon_flow_nominal =   1000 * 0.1041,
    TEvaLvg_nominal =     273.15 + 8.89,
    TConEnt_nominal =     273.15 + 26.67,
    TEvaLvgMin =          273.15 + 7.22,
    TEvaLvgMax =          273.15 + 12.78,
    TConEntMin =          273.15 + 9.44,
    TConEntMax =          273.15 + 26.67,
    capFunT =             {8.561286E-01,4.130164E-02,-7.109335E-04,4.306273E-03,-6.336613E-04,7.211635E-04},
    EIRFunT =             {4.434989E-01,4.361264E-02,-1.733337E-03,9.915503E-03,4.312717E-04,-1.122346E-03},
    EIRFunPLR =           {5.272116E-02,4.176382E-01,5.310870E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller York YK 1881kW/6.53COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller York YK 1881kW/6.53COP/Vanes,  !- Name
    1881400,                 !- Reference Capacity {W}
    6.53,                    !- Reference COP {W/W}
    8.89,                    !- Reference Leaving Chilled Water Temperature {C}
    26.67,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.04397,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.1041,                  !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller York YK 1881kW/6.53COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller York YK 1881kW/6.53COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller York YK 1881kW/6.53COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.19,                    !- Minimum Part Load Ratio
    1.03,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.19,                    !- Minimum Unloading Ratio
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
