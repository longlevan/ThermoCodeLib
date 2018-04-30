within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_York_YK_2159kW_6_85COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -2159200,
    COP_nominal =         6.85,
    PLRMin =              0.14,
    PLRMinUnl =           0.14,
    PLRMax =              1.05,
    mEva_flow_nominal =   1000 * 0.07571,
    mCon_flow_nominal =   1000 * 0.11356,
    TEvaLvg_nominal =     273.15 + 6.67,
    TConEnt_nominal =     273.15 + 26.11,
    TEvaLvgMin =          273.15 + 4.44,
    TEvaLvgMax =          273.15 + 8.89,
    TConEntMin =          273.15 + 15.56,
    TConEntMax =          273.15 + 29.44,
    capFunT =             {6.322235E-01,1.553954E-02,-9.149770E-03,5.284289E-02,-2.818835E-03,7.074096E-03},
    EIRFunT =             {9.106730E-01,-3.786410E-03,-1.084261E-03,-7.148246E-03,5.178799E-04,1.818623E-05},
    EIRFunPLR =           {2.595694E-01,1.889684E-01,5.518450E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller York YK 2159kW/6.85COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller York YK 2159kW/6.85COP/Vanes,  !- Name
    2159200,                 !- Reference Capacity {W}
    6.85,                    !- Reference COP {W/W}
    6.67,                    !- Reference Leaving Chilled Water Temperature {C}
    26.11,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.07571,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.11356,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller York YK 2159kW/6.85COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller York YK 2159kW/6.85COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller York YK 2159kW/6.85COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.14,                    !- Minimum Part Load Ratio
    1.05,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.14,                    !- Minimum Unloading Ratio
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
