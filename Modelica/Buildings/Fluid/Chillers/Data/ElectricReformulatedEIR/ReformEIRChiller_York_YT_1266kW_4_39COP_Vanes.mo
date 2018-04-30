within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_York_YT_1266kW_4_39COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -1266000,
    COP_nominal =         4.39,
    PLRMin =              0.11,
    PLRMinUnl =           0.11,
    PLRMax =              1.05,
    mEva_flow_nominal =   1000 * 0.03533,
    mCon_flow_nominal =   1000 * 0.05773,
    TEvaLvg_nominal =     273.15 + 5.56,
    TConLvg_nominal =     273.15 + 41.44,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 8.89,
    TConLvgMin =          273.15 + 17.28,
    TConLvgMax =          273.15 + 42.31,
    capFunT =             {1.556501E-03,-4.410896E-02,-1.854492E-03,6.411584E-02,-1.204698E-03,3.060359E-03},
    EIRFunT =             {1.265473E-01,5.028662E-02,-4.704162E-03,7.913033E-03,3.096000E-04,-4.283498E-04},
    EIRFunPLR =           {1.253346E+00,-3.406609E-02,1.893094E-04,2.554443E-01,-1.655620E+00,2.220865E-02,0.000000E+00,1.319681E+00,0.000000E+00,0.000000E+00},
    etaMotor =            1.0) "ReformEIRChiller York YT 1266kW/4.39COP/Vanes"
  annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller York YT 1266kW/4.39COP/Vanes,  !- Name
    1266000,                 !- Reference Capacity {W}
    4.39,                    !- Reference COP {W/W}
    5.56,                    !- Reference Leaving Chilled Water Temperature {C}
    41.44,                   !- Reference Leaving Condenser Water Temperature {C}
    0.03533,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.05773,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller York YT 1266kW/4.39COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller York YT 1266kW/4.39COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller York YT 1266kW/4.39COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.11,                    !- Minimum Part Load Ratio
    1.05,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.11,                    !- Minimum Unloading Ratio
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
