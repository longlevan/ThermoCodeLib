within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_Trane_RTHC_707kW_7_77COP_Valve =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -706800,
    COP_nominal =         7.77,
    PLRMin =              0.28,
    PLRMinUnl =           0.28,
    PLRMax =              1.01,
    mEva_flow_nominal =   1000 * 0.04921,
    mCon_flow_nominal =   1000 * 0.03268,
    TEvaLvg_nominal =     273.15 + 5.56,
    TConLvg_nominal =     273.15 + 21.40,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 11.11,
    TConLvgMin =          273.15 + 21.40,
    TConLvgMax =          273.15 + 30.31,
    capFunT =             {9.650754E-01,3.116480E-02,6.283163E-04,-5.158701E-03,-5.981975E-05,-1.623288E-04},
    EIRFunT =             {5.777406E-01,1.234139E-02,-3.550380E-04,9.871073E-03,7.225565E-04,-1.521275E-03},
    EIRFunPLR =           {4.383290E+00,-1.536137E-01,-3.825029E-05,-4.911866E+00,3.331498E+00,1.554529E-01,0.000000E+00,-1.824968E+00,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller Trane RTHC 707kW/7.77COP/Valve" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller Trane RTHC 707kW/7.77COP/Valve,  !- Name
    706800,                  !- Reference Capacity {W}
    7.77,                    !- Reference COP {W/W}
    5.56,                    !- Reference Leaving Chilled Water Temperature {C}
    21.40,                   !- Reference Leaving Condenser Water Temperature {C}
    0.04921,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.03268,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller Trane RTHC 707kW/7.77COP/Valve CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller Trane RTHC 707kW/7.77COP/Valve EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller Trane RTHC 707kW/7.77COP/Valve EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.28,                    !- Minimum Part Load Ratio
    1.01,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.28,                    !- Minimum Unloading Ratio
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
