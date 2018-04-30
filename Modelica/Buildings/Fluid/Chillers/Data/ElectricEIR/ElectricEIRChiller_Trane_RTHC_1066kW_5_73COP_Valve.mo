within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_Trane_RTHC_1066kW_5_73COP_Valve =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -1065500,
    COP_nominal =         5.73,
    PLRMin =              0.30,
    PLRMinUnl =           0.30,
    PLRMax =              1.01,
    mEva_flow_nominal =   1000 * 0.05142,
    mCon_flow_nominal =   1000 * 0.04416,
    TEvaLvg_nominal =     273.15 + 5.56,
    TConEnt_nominal =     273.15 + 25.28,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 10.00,
    TConEntMin =          273.15 + 20.07,
    TConEntMax =          273.15 + 25.28,
    capFunT =             {1.062396E+00,4.575299E-02,2.802795E-04,-8.802343E-03,-3.127891E-05,-5.937227E-04},
    EIRFunT =             {9.003080E-01,3.783201E-03,9.815780E-04,-4.051727E-02,2.037095E-03,-1.619326E-03},
    EIRFunPLR =           {1.007344E-01,1.119205E+00,-2.173230E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller Trane RTHC 1066kW/5.73COP/Valve" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller Trane RTHC 1066kW/5.73COP/Valve,  !- Name
    1065500,                 !- Reference Capacity {W}
    5.73,                    !- Reference COP {W/W}
    5.56,                    !- Reference Leaving Chilled Water Temperature {C}
    25.28,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.05142,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.04416,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller Trane RTHC 1066kW/5.73COP/Valve CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller Trane RTHC 1066kW/5.73COP/Valve EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller Trane RTHC 1066kW/5.73COP/Valve EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.30,                    !- Minimum Part Load Ratio
    1.01,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.30,                    !- Minimum Unloading Ratio
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
