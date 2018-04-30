within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_Trane_CVHF_1758kW_5_96COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -1758300,
    COP_nominal =         5.96,
    PLRMin =              0.20,
    PLRMinUnl =           0.20,
    PLRMax =              1.02,
    mEva_flow_nominal =   1000 * 0.06309,
    mCon_flow_nominal =   1000 * 0.06309,
    TEvaLvg_nominal =     273.15 + 5.56,
    TConLvg_nominal =     273.15 + 32.23,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 10.00,
    TConLvgMin =          273.15 + 20.13,
    TConLvgMax =          273.15 + 32.40,
    capFunT =             {1.152910E+00,-3.989989E-03,-3.188662E-03,-1.713324E-02,1.013638E-04,2.380003E-03},
    EIRFunT =             {5.175819E-02,-9.767577E-02,4.582364E-03,6.527440E-02,-7.594482E-04,1.621435E-04},
    EIRFunPLR =           {-3.445966E+00,3.643598E-01,-1.697759E-04,-2.909905E+00,6.045776E+00,-3.553254E-01,0.000000E+00,1.192526E+00,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller Trane CVHF 1758kW/5.96COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller Trane CVHF 1758kW/5.96COP/Vanes,  !- Name
    1758300,                 !- Reference Capacity {W}
    5.96,                    !- Reference COP {W/W}
    5.56,                    !- Reference Leaving Chilled Water Temperature {C}
    32.23,                   !- Reference Leaving Condenser Water Temperature {C}
    0.06309,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.06309,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller Trane CVHF 1758kW/5.96COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller Trane CVHF 1758kW/5.96COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller Trane CVHF 1758kW/5.96COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.20,                    !- Minimum Part Load Ratio
    1.02,                    !- Maximum Part Load Ratio
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
