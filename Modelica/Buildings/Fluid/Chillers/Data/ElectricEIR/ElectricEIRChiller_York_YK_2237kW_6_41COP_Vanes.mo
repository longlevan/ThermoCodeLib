within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_York_YK_2237kW_6_41COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -2236600,
    COP_nominal =         6.41,
    PLRMin =              0.13,
    PLRMinUnl =           0.13,
    PLRMax =              1.01,
    mEva_flow_nominal =   1000 * 0.07571,
    mCon_flow_nominal =   1000 * 0.11356,
    TEvaLvg_nominal =     273.15 + 6.67,
    TConEnt_nominal =     273.15 + 26.11,
    TEvaLvgMin =          273.15 + 4.44,
    TEvaLvgMax =          273.15 + 8.89,
    TConEntMin =          273.15 + 15.56,
    TConEntMax =          273.15 + 29.44,
    capFunT =             {6.899710E-01,-1.413334E-03,-1.109323E-03,4.078120E-02,-1.785625E-03,2.977821E-03},
    EIRFunT =             {8.567950E-01,3.354557E-03,1.047901E-03,-5.217250E-03,6.565310E-04,-1.361740E-03},
    EIRFunPLR =           {2.605354E-01,2.125571E-01,5.269144E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller York YK 2237kW/6.41COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller York YK 2237kW/6.41COP/Vanes,  !- Name
    2236600,                 !- Reference Capacity {W}
    6.41,                    !- Reference COP {W/W}
    6.67,                    !- Reference Leaving Chilled Water Temperature {C}
    26.11,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.07571,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.11356,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller York YK 2237kW/6.41COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller York YK 2237kW/6.41COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller York YK 2237kW/6.41COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.13,                    !- Minimum Part Load Ratio
    1.01,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.13,                    !- Minimum Unloading Ratio
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
