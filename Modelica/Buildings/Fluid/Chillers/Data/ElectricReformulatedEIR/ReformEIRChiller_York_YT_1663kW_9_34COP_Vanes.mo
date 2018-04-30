within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_York_YT_1663kW_9_34COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -1663300,
    COP_nominal =         9.34,
    PLRMin =              0.17,
    PLRMinUnl =           0.17,
    PLRMax =              1.04,
    mEva_flow_nominal =   1000 * 0.04139,
    mCon_flow_nominal =   1000 * 0.0776,
    TEvaLvg_nominal =     273.15 + 5.56,
    TConLvg_nominal =     273.15 + 18.45,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 8.89,
    TConLvgMin =          273.15 + 18.45,
    TConLvgMax =          273.15 + 34.43,
    capFunT =             {6.972683E-01,-9.692349E-02,4.846738E-03,5.523481E-02,-1.995272E-03,3.533436E-03},
    EIRFunT =             {9.477120E-01,-3.913396E-02,2.408597E-03,6.703909E-03,5.744537E-04,-1.084620E-03},
    EIRFunPLR =           {3.131373E-01,-3.438844E-03,-2.715303E-06,1.918294E-01,7.024552E-01,3.301543E-03,0.000000E+00,-2.040731E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0) "ReformEIRChiller York YT 1663kW/9.34COP/Vanes"
  annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller York YT 1663kW/9.34COP/Vanes,  !- Name
    1663300,                 !- Reference Capacity {W}
    9.34,                    !- Reference COP {W/W}
    5.56,                    !- Reference Leaving Chilled Water Temperature {C}
    18.45,                   !- Reference Leaving Condenser Water Temperature {C}
    0.04139,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.0776,                  !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller York YT 1663kW/9.34COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller York YT 1663kW/9.34COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller York YT 1663kW/9.34COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.17,                    !- Minimum Part Load Ratio
    1.04,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.17,                    !- Minimum Unloading Ratio
    Chilled Water Side Inlet Node,  !- Chilled Water Inlet Node Name
    Chilled Water Side Outlet Node,  !- Chilled Water Outlet Node Name
    Condenser Side Inlet Node,  !- Condenser Inlet Node Name
    Condenser Side Outlet Node,  !- Condenser Outlet Node Name
    1.0,                     !- Compressor Motor Efficiency
    2.0,                     !- Leaving Chilled Water Lower Temperature Limit {C}
    ConstantFlow,            !- Chiller Flow Mode Type
    0.0;                     !- Design Heat Recovery Water Flow Rate {m3/s}
</pre>
</html>"));
