within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_McQuay_PEH_1104kW_8_00COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -1104200,
    COP_nominal =         8.00,
    PLRMin =              0.08,
    PLRMinUnl =           0.08,
    PLRMax =              1.03,
    mEva_flow_nominal =   1000 * 0.02423,
    mCon_flow_nominal =   1000 * 0.03028,
    TEvaLvg_nominal =     273.15 + 6.67,
    TConEnt_nominal =     273.15 + 12.78,
    TEvaLvgMin =          273.15 + 6.67,
    TEvaLvgMax =          273.15 + 12.22,
    TConEntMin =          273.15 + 12.78,
    TConEntMax =          273.15 + 23.89,
    capFunT =             {8.210185E-01,4.386152E-02,-1.521829E-03,-4.314921E-03,-7.251667E-04,1.497681E-03},
    EIRFunT =             {8.655242E-01,-3.808337E-04,-1.320050E-03,1.137834E-02,-4.095120E-05,6.531102E-04},
    EIRFunPLR =           {3.091150E-01,-1.089639E-02,7.022967E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller McQuay PEH 1104kW/8.00COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller McQuay PEH 1104kW/8.00COP/Vanes,  !- Name
    1104200,                 !- Reference Capacity {W}
    8.00,                    !- Reference COP {W/W}
    6.67,                    !- Reference Leaving Chilled Water Temperature {C}
    12.78,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.02423,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.03028,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller McQuay PEH 1104kW/8.00COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller McQuay PEH 1104kW/8.00COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller McQuay PEH 1104kW/8.00COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.08,                    !- Minimum Part Load Ratio
    1.03,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.08,                    !- Minimum Unloading Ratio
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
