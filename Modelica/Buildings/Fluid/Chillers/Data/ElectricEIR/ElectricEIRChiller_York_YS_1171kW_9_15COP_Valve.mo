within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_York_YS_1171kW_9_15COP_Valve =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -1171000,
    COP_nominal =         9.15,
    PLRMin =              0.09,
    PLRMinUnl =           0.09,
    PLRMax =              1.01,
    mEva_flow_nominal =   1000 * 0.03249,
    mCon_flow_nominal =   1000 * 0.05173,
    TEvaLvg_nominal =     273.15 + 6.11,
    TConEnt_nominal =     273.15 + 15.56,
    TEvaLvgMin =          273.15 + 6.11,
    TEvaLvgMax =          273.15 + 12.78,
    TConEntMin =          273.15 + 15.56,
    TConEntMax =          273.15 + 23.89,
    capFunT =             {9.299045E-01,2.350383E-02,-4.649409E-04,-4.367237E-03,-2.040112E-04,6.430038E-04},
    EIRFunT =             {5.325834E-01,-2.611733E-02,1.365012E-03,4.099324E-02,3.401995E-04,-1.514251E-03},
    EIRFunPLR =           {1.889392E-01,4.684305E-01,3.451545E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller York YS 1171kW/9.15COP/Valve" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller York YS 1171kW/9.15COP/Valve,  !- Name
    1171000,                 !- Reference Capacity {W}
    9.15,                    !- Reference COP {W/W}
    6.11,                    !- Reference Leaving Chilled Water Temperature {C}
    15.56,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.03249,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.05173,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller York YS 1171kW/9.15COP/Valve CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller York YS 1171kW/9.15COP/Valve EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller York YS 1171kW/9.15COP/Valve EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.09,                    !- Minimum Part Load Ratio
    1.01,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.09,                    !- Minimum Unloading Ratio
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
