within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_McQuay_PFH_2043kW_8_44COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -2043100,
    COP_nominal =         8.44,
    PLRMin =              0.08,
    PLRMinUnl =           0.08,
    PLRMax =              1.02,
    mEva_flow_nominal =   1000 * 0.04757,
    mCon_flow_nominal =   1000 * 0.06814,
    TEvaLvg_nominal =     273.15 + 6.11,
    TConEnt_nominal =     273.15 + 12.78,
    TEvaLvgMin =          273.15 + 6.11,
    TEvaLvgMax =          273.15 + 12.78,
    TConEntMin =          273.15 + 12.78,
    TConEntMax =          273.15 + 23.89,
    capFunT =             {8.383569E-01,4.716323E-02,-2.515385E-03,-3.773603E-03,-9.186324E-04,2.177057E-03},
    EIRFunT =             {7.891693E-01,1.168677E-02,-1.825470E-03,1.278749E-02,1.521317E-04,2.156746E-04},
    EIRFunPLR =           {1.225600E-01,3.070007E-01,5.712759E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller McQuay PFH 2043kW/8.44COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller McQuay PFH 2043kW/8.44COP/Vanes,  !- Name
    2043100,                 !- Reference Capacity {W}
    8.44,                    !- Reference COP {W/W}
    6.11,                    !- Reference Leaving Chilled Water Temperature {C}
    12.78,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.04757,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.06814,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller McQuay PFH 2043kW/8.44COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller McQuay PFH 2043kW/8.44COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller McQuay PFH 2043kW/8.44COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.08,                    !- Minimum Part Load Ratio
    1.02,                    !- Maximum Part Load Ratio
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
