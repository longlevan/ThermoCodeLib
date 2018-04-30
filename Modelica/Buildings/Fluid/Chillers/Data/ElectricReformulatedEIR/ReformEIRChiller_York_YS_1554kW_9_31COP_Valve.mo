within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_York_YS_1554kW_9_31COP_Valve =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -1554300,
    COP_nominal =         9.31,
    PLRMin =              0.10,
    PLRMinUnl =           0.10,
    PLRMax =              1.02,
    mEva_flow_nominal =   1000 * 0.0424,
    mCon_flow_nominal =   1000 * 0.07949,
    TEvaLvg_nominal =     273.15 + 5.56,
    TConLvg_nominal =     273.15 + 20.74,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 8.89,
    TConLvgMin =          273.15 + 20.74,
    TConLvgMax =          273.15 + 40.06,
    capFunT =             {1.158269E+00,9.811289E-03,1.227091E-03,-1.535445E-02,9.922966E-05,5.323659E-05},
    EIRFunT =             {3.556656E-01,2.393674E-02,-1.681332E-04,2.367290E-02,7.263583E-04,-2.267522E-03},
    EIRFunPLR =           {3.590292E-01,-5.404650E-03,-2.016784E-05,-2.714668E-01,2.061858E+00,6.725648E-03,0.000000E+00,-1.170629E+00,0.000000E+00,0.000000E+00},
    etaMotor =            1.0) "ReformEIRChiller York YS 1554kW/9.31COP/Valve"
  annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller York YS 1554kW/9.31COP/Valve,  !- Name
    1554300,                 !- Reference Capacity {W}
    9.31,                    !- Reference COP {W/W}
    5.56,                    !- Reference Leaving Chilled Water Temperature {C}
    20.74,                   !- Reference Leaving Condenser Water Temperature {C}
    0.0424,                  !- Reference Chilled Water Flow Rate {m3/s}
    0.07949,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller York YS 1554kW/9.31COP/Valve CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller York YS 1554kW/9.31COP/Valve EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller York YS 1554kW/9.31COP/Valve EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
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
