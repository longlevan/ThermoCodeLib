within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_Trane_RTHB_542kW_5_26COP_Valve =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -541500,
    COP_nominal =         5.26,
    PLRMin =              0.30,
    PLRMinUnl =           0.30,
    PLRMax =              1.01,
    mEva_flow_nominal =   1000 * 0.01363,
    mCon_flow_nominal =   1000 * 0.01577,
    TEvaLvg_nominal =     273.15 + 5.56,
    TConEnt_nominal =     273.15 + 21.11,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 10.00,
    TConEntMin =          273.15 + 15.56,
    TConEntMax =          273.15 + 23.89,
    capFunT =             {9.226438E-01,2.878831E-02,3.756957E-04,-1.963636E-03,-8.415584E-05,-1.262338E-04},
    EIRFunT =             {4.953775E-01,-1.359340E-02,5.784637E-04,2.778142E-02,1.747259E-04,-8.590768E-04},
    EIRFunPLR =           {3.057645E-01,-1.548084E-01,8.484536E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller Trane RTHB 542kW/5.26COP/Valve" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller Trane RTHB 542kW/5.26COP/Valve,  !- Name
    541500,                  !- Reference Capacity {W}
    5.26,                    !- Reference COP {W/W}
    5.56,                    !- Reference Leaving Chilled Water Temperature {C}
    21.11,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.01363,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.01577,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller Trane RTHB 542kW/5.26COP/Valve CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller Trane RTHB 542kW/5.26COP/Valve EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller Trane RTHB 542kW/5.26COP/Valve EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
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
