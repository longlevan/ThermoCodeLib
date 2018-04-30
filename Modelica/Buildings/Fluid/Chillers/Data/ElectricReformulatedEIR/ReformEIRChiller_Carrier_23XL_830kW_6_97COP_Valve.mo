within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_Carrier_23XL_830kW_6_97COP_Valve =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -829900,
    COP_nominal =         6.97,
    PLRMin =              0.20,
    PLRMinUnl =           0.20,
    PLRMax =              1.01,
    mEva_flow_nominal =   1000 * 0.03186,
    mCon_flow_nominal =   1000 * 0.04744,
    TEvaLvg_nominal =     273.15 + 5.56,
    TConLvg_nominal =     273.15 + 28.67,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 10.00,
    TConLvgMin =          273.15 + 18.74,
    TConLvgMax =          273.15 + 28.78,
    capFunT =             {7.593802E-01,3.128246E-03,-2.461755E-04,1.648515E-02,-3.342693E-04,2.498119E-04},
    EIRFunT =             {3.680542E-01,-1.666432E-02,-2.427956E-04,2.515814E-02,-4.357417E-05,1.578686E-04},
    EIRFunPLR =           {8.035259E-01,-2.731638E-02,3.311687E-05,-3.801212E-01,1.805184E+00,2.602604E-02,0.000000E+00,-1.216514E+00,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller Carrier 23XL 830kW/6.97COP/Valve" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller Carrier 23XL 830kW/6.97COP/Valve,  !- Name
    829900,                  !- Reference Capacity {W}
    6.97,                    !- Reference COP {W/W}
    5.56,                    !- Reference Leaving Chilled Water Temperature {C}
    28.67,                   !- Reference Leaving Condenser Water Temperature {C}
    0.03186,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.04744,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller Carrier 23XL 830kW/6.97COP/Valve CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller Carrier 23XL 830kW/6.97COP/Valve EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller Carrier 23XL 830kW/6.97COP/Valve EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
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
