within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_McQuay_PFH_2462kW_6_67COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -2461600,
    COP_nominal =         6.67,
    PLRMin =              0.10,
    PLRMinUnl =           0.10,
    PLRMax =              1.02,
    mEva_flow_nominal =   1000 * 0.07066,
    mCon_flow_nominal =   1000 * 0.10157,
    TEvaLvg_nominal =     273.15 + 5.56,
    TConLvg_nominal =     273.15 + 29.44,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 8.89,
    TConLvgMin =          273.15 + 21.31,
    TConLvgMax =          273.15 + 31.55,
    capFunT =             {4.142265E-01,1.542602E-02,-7.911049E-03,7.508392E-02,-2.773731E-03,5.837360E-03},
    EIRFunT =             {5.570216E-01,9.193251E-03,-5.145487E-03,6.832209E-03,1.403064E-04,1.590130E-03},
    EIRFunPLR =           {-8.594949E-01,6.566973E-02,1.939985E-05,1.001788E+00,1.280680E-01,-6.652851E-02,0.000000E+00,7.389430E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller McQuay PFH 2462kW/6.67COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller McQuay PFH 2462kW/6.67COP/Vanes,  !- Name
    2461600,                 !- Reference Capacity {W}
    6.67,                    !- Reference COP {W/W}
    5.56,                    !- Reference Leaving Chilled Water Temperature {C}
    29.44,                   !- Reference Leaving Condenser Water Temperature {C}
    0.07066,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.10157,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller McQuay PFH 2462kW/6.67COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller McQuay PFH 2462kW/6.67COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller McQuay PFH 2462kW/6.67COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.10,                    !- Minimum Part Load Ratio
    1.02,                    !- Maximum Part Load Ratio
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
