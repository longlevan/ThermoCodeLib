within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_York_YT_1495kW_7_51COP_VSD =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -1494500,
    COP_nominal =         7.51,
    PLRMin =              0.11,
    PLRMinUnl =           0.11,
    PLRMax =              1.05,
    mEva_flow_nominal =   1000 * 0.0429,
    mCon_flow_nominal =   1000 * 0.06719,
    TEvaLvg_nominal =     273.15 + 7.22,
    TConEnt_nominal =     273.15 + 23.89,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 8.89,
    TConEntMin =          273.15 + 12.78,
    TConEntMax =          273.15 + 35.00,
    capFunT =             {1.051921E+00,-1.632255E-01,1.149042E-02,5.463515E-02,-1.579985E-03,1.628246E-03},
    EIRFunT =             {7.106985E-01,-2.087623E-01,9.421379E-03,8.491925E-02,-1.260820E-03,1.125512E-03},
    EIRFunPLR =           {1.517470E-01,-1.577252E-01,1.005197E+00},
    etaMotor =            1.0)
  "ElectricEIRChiller York YT 1495kW/7.51COP/VSD" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller York YT 1495kW/7.51COP/VSD,  !- Name
    1494500,                 !- Reference Capacity {W}
    7.51,                    !- Reference COP {W/W}
    7.22,                    !- Reference Leaving Chilled Water Temperature {C}
    23.89,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.0429,                  !- Reference Chilled Water Flow Rate {m3/s}
    0.06719,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller York YT 1495kW/7.51COP/VSD CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller York YT 1495kW/7.51COP/VSD EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller York YT 1495kW/7.51COP/VSD EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.11,                    !- Minimum Part Load Ratio
    1.05,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.11,                    !- Minimum Unloading Ratio
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
