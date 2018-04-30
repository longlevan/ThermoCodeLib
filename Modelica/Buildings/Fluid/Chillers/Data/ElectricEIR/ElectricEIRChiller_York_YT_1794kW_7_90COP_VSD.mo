within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_York_YT_1794kW_7_90COP_VSD =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -1793500,
    COP_nominal =         7.90,
    PLRMin =              0.10,
    PLRMinUnl =           0.10,
    PLRMax =              1.05,
    mEva_flow_nominal =   1000 * 0.05148,
    mCon_flow_nominal =   1000 * 0.09653,
    TEvaLvg_nominal =     273.15 + 7.22,
    TConEnt_nominal =     273.15 + 23.89,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 8.89,
    TConEntMin =          273.15 + 12.78,
    TConEntMax =          273.15 + 29.44,
    capFunT =             {9.552268E-01,-1.553435E-01,7.958834E-03,6.132388E-02,-1.899594E-03,3.323245E-03},
    EIRFunT =             {5.984829E-01,-1.552700E-01,6.909012E-03,6.801572E-02,-7.450754E-04,5.764600E-04},
    EIRFunPLR =           {1.445880E-01,1.059293E-01,7.489704E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller York YT 1794kW/7.90COP/VSD" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller York YT 1794kW/7.90COP/VSD,  !- Name
    1793500,                 !- Reference Capacity {W}
    7.90,                    !- Reference COP {W/W}
    7.22,                    !- Reference Leaving Chilled Water Temperature {C}
    23.89,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.05148,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.09653,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller York YT 1794kW/7.90COP/VSD CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller York YT 1794kW/7.90COP/VSD EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller York YT 1794kW/7.90COP/VSD EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.10,                    !- Minimum Part Load Ratio
    1.05,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.10,                    !- Minimum Unloading Ratio
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
