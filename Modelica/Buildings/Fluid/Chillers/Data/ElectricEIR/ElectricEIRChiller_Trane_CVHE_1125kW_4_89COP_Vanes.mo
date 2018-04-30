within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_Trane_CVHE_1125kW_4_89COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -1125300,
    COP_nominal =         4.89,
    PLRMin =              0.10,
    PLRMinUnl =           0.10,
    PLRMax =              1.01,
    mEva_flow_nominal =   1000 * 0.02776,
    mCon_flow_nominal =   1000 * 0.02618,
    TEvaLvg_nominal =     273.15 + 5.56,
    TConEnt_nominal =     273.15 + 23.89,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 10.00,
    TConEntMin =          273.15 + 15.56,
    TConEntMax =          273.15 + 23.89,
    capFunT =             {6.151549E-01,-1.181250E-02,-1.491630E-03,3.326625E-02,-9.315000E-04,1.771875E-03},
    EIRFunT =             {5.810580E-01,-4.344257E-02,-5.369108E-04,2.844405E-02,-1.609390E-04,7.004346E-04},
    EIRFunPLR =           {1.807198E-01,-1.469686E-01,9.658417E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller Trane CVHE 1125kW/4.89COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller Trane CVHE 1125kW/4.89COP/Vanes,  !- Name
    1125300,                 !- Reference Capacity {W}
    4.89,                    !- Reference COP {W/W}
    5.56,                    !- Reference Leaving Chilled Water Temperature {C}
    23.89,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.02776,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.02618,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller Trane CVHE 1125kW/4.89COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller Trane CVHE 1125kW/4.89COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller Trane CVHE 1125kW/4.89COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.10,                    !- Minimum Part Load Ratio
    1.01,                    !- Maximum Part Load Ratio
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
