within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_York_YT_1023kW_5_81COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -1023300,
    COP_nominal =         5.81,
    PLRMin =              0.09,
    PLRMinUnl =           0.09,
    PLRMax =              1.06,
    mEva_flow_nominal =   1000 * 0.02366,
    mCon_flow_nominal =   1000 * 0.04732,
    TEvaLvg_nominal =     273.15 + 6.67,
    TConEnt_nominal =     273.15 + 29.44,
    TEvaLvgMin =          273.15 + 4.44,
    TEvaLvgMax =          273.15 + 8.89,
    TConEntMin =          273.15 + 12.78,
    TConEntMax =          273.15 + 35.00,
    capFunT =             {2.571195E-01,-1.571421E-02,-3.041761E-03,8.106512E-02,-2.568598E-03,4.247073E-03},
    EIRFunT =             {5.254964E-01,-1.972389E-02,3.441072E-04,1.651466E-02,2.005198E-04,-3.193246E-04},
    EIRFunPLR =           {2.368399E-01,3.286421E-01,4.344939E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller York YT 1023kW/5.81COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller York YT 1023kW/5.81COP/Vanes,  !- Name
    1023300,                 !- Reference Capacity {W}
    5.81,                    !- Reference COP {W/W}
    6.67,                    !- Reference Leaving Chilled Water Temperature {C}
    29.44,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.02366,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.04732,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller York YT 1023kW/5.81COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller York YT 1023kW/5.81COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller York YT 1023kW/5.81COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.09,                    !- Minimum Part Load Ratio
    1.06,                    !- Maximum Part Load Ratio
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
