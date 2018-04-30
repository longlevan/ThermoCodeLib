within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_Carrier_23XL_862kW_6_11COP_Valve =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -861500,
    COP_nominal =         6.11,
    PLRMin =              0.20,
    PLRMinUnl =           0.20,
    PLRMax =              1.05,
    mEva_flow_nominal =   1000 * 0.06782,
    mCon_flow_nominal =   1000 * 0.04296,
    TEvaLvg_nominal =     273.15 + 6.67,
    TConLvg_nominal =     273.15 + 29.47,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 10.00,
    TConLvgMin =          273.15 + 16.41,
    TConLvgMax =          273.15 + 29.48,
    capFunT =             {-2.979107E-01,-5.151176E-02,-3.383830E-03,1.108248E-01,-2.569743E-03,3.803707E-03},
    EIRFunT =             {6.091020E-01,-1.121376E-02,1.911380E-03,3.134795E-03,7.602337E-04,-1.864480E-03},
    EIRFunPLR =           {8.107206E-01,-2.005785E-02,-4.533858E-05,-9.361992E-01,2.154755E+00,2.196099E-02,0.000000E+00,-1.048282E+00,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller Carrier 23XL 862kW/6.11COP/Valve" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller Carrier 23XL 862kW/6.11COP/Valve,  !- Name
    861500,                  !- Reference Capacity {W}
    6.11,                    !- Reference COP {W/W}
    6.67,                    !- Reference Leaving Chilled Water Temperature {C}
    29.47,                   !- Reference Leaving Condenser Water Temperature {C}
    0.06782,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.04296,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller Carrier 23XL 862kW/6.11COP/Valve CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller Carrier 23XL 862kW/6.11COP/Valve EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller Carrier 23XL 862kW/6.11COP/Valve EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.20,                    !- Minimum Part Load Ratio
    1.05,                    !- Maximum Part Load Ratio
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
