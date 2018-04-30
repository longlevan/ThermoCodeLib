within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_York_YT_1663kW_9_34COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -1663300,
    COP_nominal =         9.34,
    PLRMin =              0.17,
    PLRMinUnl =           0.17,
    PLRMax =              1.03,
    mEva_flow_nominal =   1000 * 0.04139,
    mCon_flow_nominal =   1000 * 0.0776,
    TEvaLvg_nominal =     273.15 + 5.56,
    TConEnt_nominal =     273.15 + 12.78,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 8.89,
    TConEntMin =          273.15 + 12.78,
    TConEntMax =          273.15 + 29.44,
    capFunT =             {9.112226E-01,-4.546497E-02,4.431126E-03,2.439160E-02,-1.415836E-03,1.877877E-03},
    EIRFunT =             {1.028094E+00,-6.127553E-02,3.236371E-03,1.656482E-02,2.976850E-04,-4.418361E-04},
    EIRFunPLR =           {2.127966E-01,3.131004E-01,4.726018E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller York YT 1663kW/9.34COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller York YT 1663kW/9.34COP/Vanes,  !- Name
    1663300,                 !- Reference Capacity {W}
    9.34,                    !- Reference COP {W/W}
    5.56,                    !- Reference Leaving Chilled Water Temperature {C}
    12.78,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.04139,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.0776,                  !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller York YT 1663kW/9.34COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller York YT 1663kW/9.34COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller York YT 1663kW/9.34COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.17,                    !- Minimum Part Load Ratio
    1.03,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.17,                    !- Minimum Unloading Ratio
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
