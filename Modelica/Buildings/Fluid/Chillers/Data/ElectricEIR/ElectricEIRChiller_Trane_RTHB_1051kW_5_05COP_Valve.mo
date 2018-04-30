within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_Trane_RTHB_1051kW_5_05COP_Valve =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -1051400,
    COP_nominal =         5.05,
    PLRMin =              0.20,
    PLRMinUnl =           0.20,
    PLRMax =              1.01,
    mEva_flow_nominal =   1000 * 0.04527,
    mCon_flow_nominal =   1000 * 0.05659,
    TEvaLvg_nominal =     273.15 + 6.67,
    TConEnt_nominal =     273.15 + 29.44,
    TEvaLvgMin =          273.15 + 4.44,
    TEvaLvgMax =          273.15 + 8.89,
    TConEntMin =          273.15 + 23.89,
    TConEntMax =          273.15 + 35.00,
    capFunT =             {9.482157E-01,3.306737E-02,-6.450072E-05,-3.756522E-03,-6.501672E-05,2.517986E-15},
    EIRFunT =             {4.904181E-01,-5.530317E-03,1.209907E-03,9.122333E-03,5.923591E-04,-1.469958E-03},
    EIRFunPLR =           {2.590465E-01,2.148987E-01,5.265039E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller Trane RTHB 1051kW/5.05COP/Valve" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller Trane RTHB 1051kW/5.05COP/Valve,  !- Name
    1051400,                 !- Reference Capacity {W}
    5.05,                    !- Reference COP {W/W}
    6.67,                    !- Reference Leaving Chilled Water Temperature {C}
    29.44,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.04527,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.05659,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller Trane RTHB 1051kW/5.05COP/Valve CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller Trane RTHB 1051kW/5.05COP/Valve EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller Trane RTHB 1051kW/5.05COP/Valve EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.20,                    !- Minimum Part Load Ratio
    1.01,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.20,                    !- Minimum Unloading Ratio
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
