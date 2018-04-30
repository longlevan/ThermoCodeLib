within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_York_YT_1758kW_6_28COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -1758300,
    COP_nominal =         6.28,
    PLRMin =              0.20,
    PLRMinUnl =           0.20,
    PLRMax =              1.06,
    mEva_flow_nominal =   1000 * 0.07571,
    mCon_flow_nominal =   1000 * 0.09464,
    TEvaLvg_nominal =     273.15 + 6.67,
    TConEnt_nominal =     273.15 + 29.44,
    TEvaLvgMin =          273.15 + 4.44,
    TEvaLvgMax =          273.15 + 8.89,
    TConEntMin =          273.15 + 15.56,
    TConEntMax =          273.15 + 35.00,
    capFunT =             {7.079149E-01,-2.006276E-03,-2.596043E-03,3.005922E-02,-1.056423E-03,2.045705E-03},
    EIRFunT =             {5.605391E-01,-1.377994E-02,6.569542E-05,1.321951E-02,2.686074E-04,-5.011451E-04},
    EIRFunPLR =           {1.861223E-01,5.482049E-01,2.647377E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller York YT 1758kW/6.28COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller York YT 1758kW/6.28COP/Vanes,  !- Name
    1758300,                 !- Reference Capacity {W}
    6.28,                    !- Reference COP {W/W}
    6.67,                    !- Reference Leaving Chilled Water Temperature {C}
    29.44,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.07571,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.09464,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller York YT 1758kW/6.28COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller York YT 1758kW/6.28COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller York YT 1758kW/6.28COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.20,                    !- Minimum Part Load Ratio
    1.06,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.20,                    !- Minimum Unloading Ratio
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
