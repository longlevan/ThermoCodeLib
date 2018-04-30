within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_York_YT_1055kW_5_96COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -1055000,
    COP_nominal =         5.96,
    PLRMin =              0.10,
    PLRMinUnl =           0.10,
    PLRMax =              1.05,
    mEva_flow_nominal =   1000 * 0.02839,
    mCon_flow_nominal =   1000 * 0.05678,
    TEvaLvg_nominal =     273.15 + 6.67,
    TConEnt_nominal =     273.15 + 29.44,
    TEvaLvgMin =          273.15 + 4.44,
    TEvaLvgMax =          273.15 + 8.89,
    TConEntMin =          273.15 + 12.78,
    TConEntMax =          273.15 + 35.00,
    capFunT =             {1.785912E-01,-5.900023E-02,-5.946963E-04,9.297889E-02,-2.841024E-03,4.974221E-03},
    EIRFunT =             {5.245110E-01,-2.850126E-02,8.034720E-04,1.893133E-02,1.151629E-04,-9.340642E-05},
    EIRFunPLR =           {2.619878E-01,2.393605E-01,4.988306E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller York YT 1055kW/5.96COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller York YT 1055kW/5.96COP/Vanes,  !- Name
    1055000,                 !- Reference Capacity {W}
    5.96,                    !- Reference COP {W/W}
    6.67,                    !- Reference Leaving Chilled Water Temperature {C}
    29.44,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.02839,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.05678,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller York YT 1055kW/5.96COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller York YT 1055kW/5.96COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller York YT 1055kW/5.96COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
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
