within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_York_YT_1396kW_7_35COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -1396100,
    COP_nominal =         7.35,
    PLRMin =              0.10,
    PLRMinUnl =           0.10,
    PLRMax =              1.03,
    mEva_flow_nominal =   1000 * 0.05047,
    mCon_flow_nominal =   1000 * 0.07571,
    TEvaLvg_nominal =     273.15 + 5.56,
    TConLvg_nominal =     273.15 + 28.90,
    TEvaLvgMin =          273.15 + 4.44,
    TEvaLvgMax =          273.15 + 8.89,
    TConLvgMin =          273.15 + 17.94,
    TConLvgMax =          273.15 + 34.67,
    capFunT =             {3.601322E-02,-9.771124E-02,-2.845248E-03,1.124508E-01,-3.477685E-03,7.688650E-03},
    EIRFunT =             {4.546708E-01,3.725193E-03,-1.145409E-04,1.695408E-02,3.224089E-04,-1.265009E-03},
    EIRFunPLR =           {-2.549993E-01,1.161730E-01,1.913023E-06,-3.306674E+00,5.813195E+00,-1.164290E-01,0.000000E+00,-1.247308E+00,0.000000E+00,0.000000E+00},
    etaMotor =            1.0) "ReformEIRChiller York YT 1396kW/7.35COP/Vanes"
  annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller York YT 1396kW/7.35COP/Vanes,  !- Name
    1396100,                 !- Reference Capacity {W}
    7.35,                    !- Reference COP {W/W}
    5.56,                    !- Reference Leaving Chilled Water Temperature {C}
    28.90,                   !- Reference Leaving Condenser Water Temperature {C}
    0.05047,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.07571,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller York YT 1396kW/7.35COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller York YT 1396kW/7.35COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller York YT 1396kW/7.35COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.10,                    !- Minimum Part Load Ratio
    1.03,                    !- Maximum Part Load Ratio
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
