within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_Trane_RTHC_707kW_7_77COP_Valve =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -706800,
    COP_nominal =         7.77,
    PLRMin =              0.28,
    PLRMinUnl =           0.28,
    PLRMax =              1.01,
    mEva_flow_nominal =   1000 * 0.04921,
    mCon_flow_nominal =   1000 * 0.03268,
    TEvaLvg_nominal =     273.15 + 5.56,
    TConEnt_nominal =     273.15 + 15.56,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 11.11,
    TConEntMin =          273.15 + 15.56,
    TConEntMax =          273.15 + 23.89,
    capFunT =             {9.362925E-01,2.940722E-02,5.726999E-04,-5.696483E-03,-5.569609E-05,-1.708132E-04},
    EIRFunT =             {6.497944E-01,6.883157E-03,-5.277681E-04,1.725788E-02,6.779317E-04,-1.244055E-03},
    EIRFunPLR =           {1.997099E-01,6.754676E-01,1.243767E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller Trane RTHC 707kW/7.77COP/Valve" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller Trane RTHC 707kW/7.77COP/Valve,  !- Name
    706800,                  !- Reference Capacity {W}
    7.77,                    !- Reference COP {W/W}
    5.56,                    !- Reference Leaving Chilled Water Temperature {C}
    15.56,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.04921,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.03268,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller Trane RTHC 707kW/7.77COP/Valve CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller Trane RTHC 707kW/7.77COP/Valve EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller Trane RTHC 707kW/7.77COP/Valve EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.28,                    !- Minimum Part Load Ratio
    1.01,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.28,                    !- Minimum Unloading Ratio
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
