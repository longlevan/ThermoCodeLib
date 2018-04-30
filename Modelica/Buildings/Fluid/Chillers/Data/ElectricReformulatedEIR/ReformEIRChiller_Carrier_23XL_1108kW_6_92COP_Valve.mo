within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_Carrier_23XL_1108kW_6_92COP_Valve =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -1107700,
    COP_nominal =         6.92,
    PLRMin =              0.20,
    PLRMinUnl =           0.20,
    PLRMax =              1.02,
    mEva_flow_nominal =   1000 * 0.0571,
    mCon_flow_nominal =   1000 * 0.05142,
    TEvaLvg_nominal =     273.15 + 8.97,
    TConLvg_nominal =     273.15 + 29.64,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 10.00,
    TConLvgMin =          273.15 + 18.28,
    TConLvgMax =          273.15 + 30.24,
    capFunT =             {5.158330E-01,-2.311637E-02,-7.013270E-04,4.106942E-02,-1.177302E-03,2.292450E-03},
    EIRFunT =             {5.272297E-01,-1.879890E-02,1.120482E-03,1.100352E-02,6.338503E-04,-1.251189E-03},
    EIRFunPLR =           {2.638449E+00,-1.139810E-01,-1.028538E-04,-2.382279E+00,2.715083E+00,1.187905E-01,0.000000E+00,-2.025240E+00,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller Carrier 23XL 1108kW/6.92COP/Valve" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller Carrier 23XL 1108kW/6.92COP/Valve,  !- Name
    1107700,                 !- Reference Capacity {W}
    6.92,                    !- Reference COP {W/W}
    8.97,                    !- Reference Leaving Chilled Water Temperature {C}
    29.64,                   !- Reference Leaving Condenser Water Temperature {C}
    0.0571,                  !- Reference Chilled Water Flow Rate {m3/s}
    0.05142,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller Carrier 23XL 1108kW/6.92COP/Valve CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller Carrier 23XL 1108kW/6.92COP/Valve EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller Carrier 23XL 1108kW/6.92COP/Valve EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
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
