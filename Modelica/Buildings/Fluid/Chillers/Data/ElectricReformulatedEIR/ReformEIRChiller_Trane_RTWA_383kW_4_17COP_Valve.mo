within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_Trane_RTWA_383kW_4_17COP_Valve =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -383300,
    COP_nominal =         4.17,
    PLRMin =              0.25,
    PLRMinUnl =           0.25,
    PLRMax =              1.01,
    mEva_flow_nominal =   1000 * 0.0165,
    mCon_flow_nominal =   1000 * 0.02063,
    TEvaLvg_nominal =     273.15 + 6.67,
    TConLvg_nominal =     273.15 + 34.95,
    TEvaLvgMin =          273.15 + 4.44,
    TEvaLvgMax =          273.15 + 8.89,
    TConLvgMin =          273.15 + 29.19,
    TConLvgMax =          273.15 + 40.69,
    capFunT =             {1.005026E+00,3.896773E-02,9.270374E-05,-4.346837E-03,-4.961570E-05,-2.401448E-04},
    EIRFunT =             {6.171417E-01,-4.530431E-03,1.108471E-03,-3.373738E-04,5.176833E-04,-1.098531E-03},
    EIRFunPLR =           {-1.660765E+00,1.117605E-01,4.971509E-06,-3.472160E-02,3.399869E+00,-1.121089E-01,0.000000E+00,-6.984388E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller Trane RTWA 383kW/4.17COP/Valve" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller Trane RTWA 383kW/4.17COP/Valve,  !- Name
    383300,                  !- Reference Capacity {W}
    4.17,                    !- Reference COP {W/W}
    6.67,                    !- Reference Leaving Chilled Water Temperature {C}
    34.95,                   !- Reference Leaving Condenser Water Temperature {C}
    0.0165,                  !- Reference Chilled Water Flow Rate {m3/s}
    0.02063,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller Trane RTWA 383kW/4.17COP/Valve CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller Trane RTWA 383kW/4.17COP/Valve EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller Trane RTWA 383kW/4.17COP/Valve EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.25,                    !- Minimum Part Load Ratio
    1.01,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.25,                    !- Minimum Unloading Ratio
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
