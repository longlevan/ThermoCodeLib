within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_York_YS_1554kW_9_31COP_Valve =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -1554300,
    COP_nominal =         9.31,
    PLRMin =              0.10,
    PLRMinUnl =           0.10,
    PLRMax =              1.02,
    mEva_flow_nominal =   1000 * 0.0424,
    mCon_flow_nominal =   1000 * 0.07949,
    TEvaLvg_nominal =     273.15 + 5.56,
    TConEnt_nominal =     273.15 + 15.56,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 8.89,
    TConEntMin =          273.15 + 15.56,
    TConEntMax =          273.15 + 35.00,
    capFunT =             {1.083027E+00,9.278069E-03,1.175024E-03,-1.395851E-02,9.301303E-05,6.968115E-05},
    EIRFunT =             {5.099117E-01,1.379553E-02,-2.069529E-04,2.846021E-02,7.189977E-04,-2.027317E-03},
    EIRFunPLR =           {1.720219E-01,5.084848E-01,3.212462E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller York YS 1554kW/9.31COP/Valve" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller York YS 1554kW/9.31COP/Valve,  !- Name
    1554300,                 !- Reference Capacity {W}
    9.31,                    !- Reference COP {W/W}
    5.56,                    !- Reference Leaving Chilled Water Temperature {C}
    15.56,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.0424,                  !- Reference Chilled Water Flow Rate {m3/s}
    0.07949,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller York YS 1554kW/9.31COP/Valve CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller York YS 1554kW/9.31COP/Valve EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller York YS 1554kW/9.31COP/Valve EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.10,                    !- Minimum Part Load Ratio
    1.02,                    !- Maximum Part Load Ratio
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
