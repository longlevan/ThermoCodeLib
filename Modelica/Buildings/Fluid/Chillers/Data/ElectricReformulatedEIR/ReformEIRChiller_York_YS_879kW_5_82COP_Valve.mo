within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_York_YS_879kW_5_82COP_Valve =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -879100,
    COP_nominal =         5.82,
    PLRMin =              0.10,
    PLRMinUnl =           0.10,
    PLRMax =              1.02,
    mEva_flow_nominal =   1000 * 0.03785,
    mCon_flow_nominal =   1000 * 0.04732,
    TEvaLvg_nominal =     273.15 + 4.44,
    TConLvg_nominal =     273.15 + 31.32,
    TEvaLvgMin =          273.15 + 3.33,
    TEvaLvgMax =          273.15 + 7.78,
    TConLvgMin =          273.15 + 18.15,
    TConLvgMax =          273.15 + 35.12,
    capFunT =             {1.043132E+00,3.207323E-02,-3.372567E-04,-1.802731E-03,-1.730238E-04,3.613008E-04},
    EIRFunT =             {5.260798E-01,-4.729537E-03,1.121823E-03,4.291045E-03,5.493614E-04,-1.453233E-03},
    EIRFunPLR =           {3.727519E-01,1.350521E-04,7.654504E-07,1.088683E-02,1.106991E+00,-1.844203E-04,0.000000E+00,-4.899729E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0) "ReformEIRChiller York YS 879kW/5.82COP/Valve"
  annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller York YS 879kW/5.82COP/Valve,  !- Name
    879100,                  !- Reference Capacity {W}
    5.82,                    !- Reference COP {W/W}
    4.44,                    !- Reference Leaving Chilled Water Temperature {C}
    31.32,                   !- Reference Leaving Condenser Water Temperature {C}
    0.03785,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.04732,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller York YS 879kW/5.82COP/Valve CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller York YS 879kW/5.82COP/Valve EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller York YS 879kW/5.82COP/Valve EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
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
