within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_McQuay_PEH_1934kW_6_01COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -1934100,
    COP_nominal =         6.01,
    PLRMin =              0.10,
    PLRMinUnl =           0.10,
    PLRMax =              1.06,
    mEva_flow_nominal =   1000 * 0.05552,
    mCon_flow_nominal =   1000 * 0.07981,
    TEvaLvg_nominal =     273.15 + 5.56,
    TConLvg_nominal =     273.15 + 29.54,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 8.89,
    TConLvgMin =          273.15 + 19.00,
    TConLvgMax =          273.15 + 36.60,
    capFunT =             {-4.043899E-01,-5.695254E-02,-1.353511E-03,1.215555E-01,-2.814037E-03,4.161831E-03},
    EIRFunT =             {1.191090E-01,7.702949E-04,-2.852916E-03,4.290826E-02,-4.014538E-04,8.913432E-04},
    EIRFunPLR =           {1.000427E+00,-3.176111E-02,-2.412562E-04,4.886225E-01,-2.020669E+00,4.495646E-02,0.000000E+00,1.357430E+00,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller McQuay PEH 1934kW/6.01COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller McQuay PEH 1934kW/6.01COP/Vanes,  !- Name
    1934100,                 !- Reference Capacity {W}
    6.01,                    !- Reference COP {W/W}
    5.56,                    !- Reference Leaving Chilled Water Temperature {C}
    29.54,                   !- Reference Leaving Condenser Water Temperature {C}
    0.05552,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.07981,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller McQuay PEH 1934kW/6.01COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller McQuay PEH 1934kW/6.01COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller McQuay PEH 1934kW/6.01COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.10,                    !- Minimum Part Load Ratio
    1.06,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.10,                    !- Minimum Unloading Ratio
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
