within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_Trane_CVHE_1329kW_5_38COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -1329300,
    COP_nominal =         5.38,
    PLRMin =              0.29,
    PLRMinUnl =           0.29,
    PLRMax =              1.02,
    mEva_flow_nominal =   1000 * 0.04732,
    mCon_flow_nominal =   1000 * 0.07098,
    TEvaLvg_nominal =     273.15 + 6.11,
    TConLvg_nominal =     273.15 + 34.80,
    TEvaLvgMin =          273.15 + 6.11,
    TEvaLvgMax =          273.15 + 10.00,
    TConLvgMin =          273.15 + 26.77,
    TConLvgMax =          273.15 + 41.98,
    capFunT =             {2.971340E-01,1.063097E-01,-4.449876E-03,2.540435E-02,-5.696223E-04,1.269921E-04},
    EIRFunT =             {9.460623E-01,3.685465E-02,-7.530867E-04,-1.753701E-02,5.832929E-04,-1.143458E-03},
    EIRFunPLR =           {-9.512023E-02,8.704652E-03,-6.499682E-06,1.336749E+00,-6.968012E-01,-8.318175E-03,0.000000E+00,4.497796E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller Trane CVHE 1329kW/5.38COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller Trane CVHE 1329kW/5.38COP/Vanes,  !- Name
    1329300,                 !- Reference Capacity {W}
    5.38,                    !- Reference COP {W/W}
    6.11,                    !- Reference Leaving Chilled Water Temperature {C}
    34.80,                   !- Reference Leaving Condenser Water Temperature {C}
    0.04732,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.07098,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller Trane CVHE 1329kW/5.38COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller Trane CVHE 1329kW/5.38COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller Trane CVHE 1329kW/5.38COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.29,                    !- Minimum Part Load Ratio
    1.02,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.29,                    !- Minimum Unloading Ratio
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
