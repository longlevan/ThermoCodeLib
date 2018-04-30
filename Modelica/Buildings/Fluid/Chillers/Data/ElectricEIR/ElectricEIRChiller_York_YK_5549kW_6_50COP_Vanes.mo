within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_York_YK_5549kW_6_50COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -5549300,
    COP_nominal =         6.50,
    PLRMin =              0.14,
    PLRMinUnl =           0.14,
    PLRMax =              1.05,
    mEva_flow_nominal =   1000 * 0.18296,
    mCon_flow_nominal =   1000 * 0.27444,
    TEvaLvg_nominal =     273.15 + 6.67,
    TConEnt_nominal =     273.15 + 26.11,
    TEvaLvgMin =          273.15 + 4.44,
    TEvaLvgMax =          273.15 + 8.89,
    TConEntMin =          273.15 + 12.78,
    TConEntMax =          273.15 + 26.11,
    capFunT =             {-1.402079E-01,1.836029E-02,-2.390588E-03,1.207956E-01,-3.563147E-03,2.024532E-03},
    EIRFunT =             {4.989980E-01,-8.246157E-02,6.047523E-03,5.168793E-02,-8.552445E-04,6.275326E-05},
    EIRFunPLR =           {2.336623E-01,1.901320E-01,5.749473E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller York YK 5549kW/6.50COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller York YK 5549kW/6.50COP/Vanes,  !- Name
    5549300,                 !- Reference Capacity {W}
    6.50,                    !- Reference COP {W/W}
    6.67,                    !- Reference Leaving Chilled Water Temperature {C}
    26.11,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.18296,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.27444,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller York YK 5549kW/6.50COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller York YK 5549kW/6.50COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller York YK 5549kW/6.50COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.14,                    !- Minimum Part Load Ratio
    1.05,                    !- Maximum Part Load Ratio
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
