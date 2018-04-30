within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_Trane_CVHG670_44_86_2490kW_6_5COP =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -2490036,
    COP_nominal =         6.505,
    PLRMin =              0.087,
    PLRMinUnl =           0.087,
    PLRMax =              1.001,
    mEva_flow_nominal =   1000 * 0.08894,
    mCon_flow_nominal =   1000 * 0.13400,
    TEvaLvg_nominal =     273.15 + 6.67,
    TConLvg_nominal =     273.15 + 35.24,
    TEvaLvgMin =          273.15 + 5.60,
    TEvaLvgMax =          273.15 + 7.20,
    TConLvgMin =          273.15 + 30.8,
    TConLvgMax =          273.15 + 36.9,
    capFunT =             {0.403602663,-0.006794189,-0.000564953,0.046104574,-0.00117838,0.00215062},
    EIRFunT =             {1.056335684,0.045975279,0.001839862,-0.028575058,0.000935916,-0.002552237},
    EIRFunPLR =           {0.243594787,-0.017680952,0.000731787,0.848300868,-0.358252903,0.000896547,-9.0516E-06,0.736449508,0.000316148,-0.022213923},
    etaMotor =            1.0)
  "ReformEIRChiller Trane CVHG670-44&amp;86 2490kW/6.5COP" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller Trane CVHG670-44&amp;86 2490kW/6.5COP,  !- Name
    2490036,                 !- Reference Capacity {W}
    6.505,                   !- Reference COP {W/W}
    6.67,                    !- Reference Leaving Chilled Water Temperature {C}
    35.24,                   !- Reference Leaving Condenser Water Temperature {C}
    0.08894,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.13400,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller Trane CVHG670-44&amp;86 2490kW/6.5COP CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller Trane CVHG670-44&amp;86 2490kW/6.5COP EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller Trane CVHG670-44&amp;86 2490kW/6.5COP EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.087,                   !- Minimum Part Load Ratio
    1.001,                   !- Maximum Part Load Ratio
    0.801,                   !- Optimum Part Load Ratio
    0.087,                   !- Minimum Unloading Ratio
    Chilled Water Side Inlet Node,  !- Chilled Water Inlet Node Name
    Chilled Water Side Outlet Node,  !- Chilled Water Outlet Node Name
    Condenser Side Inlet Node,  !- Condenser Inlet Node Name
    Condenser Side Outlet Node,  !- Condenser Outlet Node Name
    1.0,                     !- Compressor Motor Efficiency
    5.6,                     !- Leaving Chilled Water Lower Temperature Limit {C}
    VariableFlow,            !- Chiller Flow Mode Type
    0.0;                     !- Design Heat Recovery Water Flow Rate {m3/s}
</pre>
</html>"));
