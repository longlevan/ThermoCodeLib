within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_Carrier_19EX_5148kW_6_34COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -5148400,
    COP_nominal =         6.34,
    PLRMin =              0.20,
    PLRMinUnl =           0.20,
    PLRMax =              1.03,
    mEva_flow_nominal =   1000 * 0.18283,
    mCon_flow_nominal =   1000 * 0.25526,
    TEvaLvg_nominal =     273.15 + 6.67,
    TConLvg_nominal =     273.15 + 31.70,
    TEvaLvgMin =          273.15 + 4.44,
    TEvaLvgMax =          273.15 + 8.89,
    TConLvgMin =          273.15 + 20.87,
    TConLvgMax =          273.15 + 34.96,
    capFunT =             {-1.011196E-01,-1.084580E-02,-6.804354E-03,8.869769E-02,-2.343514E-03,4.796955E-03},
    EIRFunT =             {6.139244E-01,1.237345E-02,8.199573E-04,6.805078E-04,6.221886E-04,-1.797776E-03},
    EIRFunPLR =           {2.989462E-01,-1.736649E-02,1.922011E-05,1.534120E+00,-1.596922E+00,1.630424E-02,0.000000E+00,7.776844E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller Carrier 19EX 5148kW/6.34COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller Carrier 19EX 5148kW/6.34COP/Vanes,  !- Name
    5148400,                 !- Reference Capacity {W}
    6.34,                    !- Reference COP {W/W}
    6.67,                    !- Reference Leaving Chilled Water Temperature {C}
    31.70,                   !- Reference Leaving Condenser Water Temperature {C}
    0.18283,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.25526,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller Carrier 19EX 5148kW/6.34COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller Carrier 19EX 5148kW/6.34COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller Carrier 19EX 5148kW/6.34COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.20,                    !- Minimum Part Load Ratio
    1.03,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.20,                    !- Minimum Unloading Ratio
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
