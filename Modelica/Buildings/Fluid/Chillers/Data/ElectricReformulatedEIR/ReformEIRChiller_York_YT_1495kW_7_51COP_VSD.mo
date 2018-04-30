within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_York_YT_1495kW_7_51COP_VSD =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -1494500,
    COP_nominal =         7.51,
    PLRMin =              0.11,
    PLRMinUnl =           0.11,
    PLRMax =              1.04,
    mEva_flow_nominal =   1000 * 0.0429,
    mCon_flow_nominal =   1000 * 0.06719,
    TEvaLvg_nominal =     273.15 + 7.22,
    TConLvg_nominal =     273.15 + 29.92,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 8.89,
    TConLvgMin =          273.15 + 18.69,
    TConLvgMax =          273.15 + 41.38,
    capFunT =             {6.015487E-01,-1.630120E-01,9.951930E-03,7.452875E-02,-1.608224E-03,2.001891E-03},
    EIRFunT =             {1.954138E-01,-1.627980E-01,5.924232E-03,8.194832E-02,-8.723337E-04,7.443855E-04},
    EIRFunPLR =           {6.377828E-01,-3.620643E-02,-1.187858E-04,5.832958E-01,-9.230655E-01,4.307256E-02,0.000000E+00,6.079021E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0) "ReformEIRChiller York YT 1495kW/7.51COP/VSD"
  annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller York YT 1495kW/7.51COP/VSD,  !- Name
    1494500,                 !- Reference Capacity {W}
    7.51,                    !- Reference COP {W/W}
    7.22,                    !- Reference Leaving Chilled Water Temperature {C}
    29.92,                   !- Reference Leaving Condenser Water Temperature {C}
    0.0429,                  !- Reference Chilled Water Flow Rate {m3/s}
    0.06719,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller York YT 1495kW/7.51COP/VSD CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller York YT 1495kW/7.51COP/VSD EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller York YT 1495kW/7.51COP/VSD EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.11,                    !- Minimum Part Load Ratio
    1.04,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.11,                    !- Minimum Unloading Ratio
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
