within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_York_YK_1259kW_6_45COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -1258900,
    COP_nominal =         6.45,
    PLRMin =              0.18,
    PLRMinUnl =           0.18,
    PLRMax =              1.02,
    mEva_flow_nominal =   1000 * 0.02631,
    mCon_flow_nominal =   1000 * 0.06246,
    TEvaLvg_nominal =     273.15 + 8.89,
    TConLvg_nominal =     273.15 + 32.24,
    TEvaLvgMin =          273.15 + 7.22,
    TEvaLvgMax =          273.15 + 12.78,
    TConLvgMin =          273.15 + 19.63,
    TConLvgMax =          273.15 + 32.83,
    capFunT =             {7.917669E-01,7.718144E-02,-1.868147E-03,2.168367E-02,-9.454040E-04,-1.251512E-04},
    EIRFunT =             {1.207755E+00,2.704147E-02,-1.882949E-05,-5.234106E-02,1.851447E-03,-2.375891E-03},
    EIRFunPLR =           {-3.830726E-01,3.222162E-02,7.399276E-05,3.649000E-01,1.497231E+00,-3.597905E-02,0.000000E+00,-4.321713E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0) "ReformEIRChiller York YK 1259kW/6.45COP/Vanes"
  annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller York YK 1259kW/6.45COP/Vanes,  !- Name
    1258900,                 !- Reference Capacity {W}
    6.45,                    !- Reference COP {W/W}
    8.89,                    !- Reference Leaving Chilled Water Temperature {C}
    32.24,                   !- Reference Leaving Condenser Water Temperature {C}
    0.02631,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.06246,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller York YK 1259kW/6.45COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller York YK 1259kW/6.45COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller York YK 1259kW/6.45COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.18,                    !- Minimum Part Load Ratio
    1.02,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.18,                    !- Minimum Unloading Ratio
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
