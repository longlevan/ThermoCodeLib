within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_Carrier_23XL_1062kW_5_50COP_Valve =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -1062000,
    COP_nominal =         5.50,
    PLRMin =              0.20,
    PLRMinUnl =           0.20,
    PLRMax =              1.01,
    mEva_flow_nominal =   1000 * 0.04573,
    mCon_flow_nominal =   1000 * 0.05716,
    TEvaLvg_nominal =     273.15 + 6.67,
    TConLvg_nominal =     273.15 + 34.70,
    TEvaLvgMin =          273.15 + 6.67,
    TEvaLvgMax =          273.15 + 10.00,
    TConLvgMin =          273.15 + 26.44,
    TConLvgMax =          273.15 + 35.10,
    capFunT =             {1.054485E+00,1.015650E-02,-4.899041E-03,-3.792726E-03,-3.699876E-04,2.891276E-03},
    EIRFunT =             {1.369592E-01,-5.681693E-03,2.795150E-04,2.407603E-02,2.142516E-04,-8.850727E-04},
    EIRFunPLR =           {1.385765E+00,-3.549685E-02,-4.110930E-06,-7.678018E-01,7.228808E-01,3.573245E-02,0.000000E+00,-3.442173E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller Carrier 23XL 1062kW/5.50COP/Valve" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller Carrier 23XL 1062kW/5.50COP/Valve,  !- Name
    1062000,                 !- Reference Capacity {W}
    5.50,                    !- Reference COP {W/W}
    6.67,                    !- Reference Leaving Chilled Water Temperature {C}
    34.70,                   !- Reference Leaving Condenser Water Temperature {C}
    0.04573,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.05716,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller Carrier 23XL 1062kW/5.50COP/Valve CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller Carrier 23XL 1062kW/5.50COP/Valve EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller Carrier 23XL 1062kW/5.50COP/Valve EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.20,                    !- Minimum Part Load Ratio
    1.01,                    !- Maximum Part Load Ratio
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
