within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_Trane_RTHC_1094kW_6_55COP_Valve =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -1093600,
    COP_nominal =         6.55,
    PLRMin =              0.25,
    PLRMinUnl =           0.25,
    PLRMax =              1.01,
    mEva_flow_nominal =   1000 * 0.04921,
    mCon_flow_nominal =   1000 * 0.04524,
    TEvaLvg_nominal =     273.15 + 5.56,
    TConEnt_nominal =     273.15 + 23.33,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 10.00,
    TConEntMin =          273.15 + 15.56,
    TConEntMax =          273.15 + 23.89,
    capFunT =             {9.643756E-01,3.820069E-02,4.611891E-04,-5.174840E-03,-5.784404E-05,-2.944185E-04},
    EIRFunT =             {6.579136E-01,-1.133448E-02,6.497057E-04,7.318160E-03,6.167738E-04,-9.553369E-04},
    EIRFunPLR =           {1.626466E-01,7.903550E-01,4.770888E-02},
    etaMotor =            1.0)
  "ElectricEIRChiller Trane RTHC 1094kW/6.55COP/Valve" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller Trane RTHC 1094kW/6.55COP/Valve,  !- Name
    1093600,                 !- Reference Capacity {W}
    6.55,                    !- Reference COP {W/W}
    5.56,                    !- Reference Leaving Chilled Water Temperature {C}
    23.33,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.04921,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.04524,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller Trane RTHC 1094kW/6.55COP/Valve CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller Trane RTHC 1094kW/6.55COP/Valve EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller Trane RTHC 1094kW/6.55COP/Valve EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.25,                    !- Minimum Part Load Ratio
    1.01,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.25,                    !- Minimum Unloading Ratio
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
