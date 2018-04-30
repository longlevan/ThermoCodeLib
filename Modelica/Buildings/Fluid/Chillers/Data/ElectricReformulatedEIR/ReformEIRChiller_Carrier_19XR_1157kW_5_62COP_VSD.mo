within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_Carrier_19XR_1157kW_5_62COP_VSD =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -1156900,
    COP_nominal =         5.62,
    PLRMin =              0.19,
    PLRMinUnl =           0.19,
    PLRMax =              1.01,
    mEva_flow_nominal =   1000 * 0.02801,
    mCon_flow_nominal =   1000 * 0.03186,
    TEvaLvg_nominal =     273.15 + 5.56,
    TConLvg_nominal =     273.15 + 31.34,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 10.00,
    TConLvgMin =          273.15 + 21.97,
    TConLvgMax =          273.15 + 34.50,
    capFunT =             {1.095494E+00,-5.546137E-03,-5.186584E-04,1.420446E-03,-2.801603E-04,1.007864E-03},
    EIRFunT =             {1.221566E+00,-2.771462E-02,1.220059E-03,-2.228215E-02,7.578438E-04,-8.532836E-04},
    EIRFunPLR =           {2.260949E-01,-1.619690E-02,2.953765E-06,4.956395E-01,1.180777E-01,1.582337E-02,0.000000E+00,1.675772E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller Carrier 19XR 1157kW/5.62COP/VSD" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller Carrier 19XR 1157kW/5.62COP/VSD,  !- Name
    1156900,                 !- Reference Capacity {W}
    5.62,                    !- Reference COP {W/W}
    5.56,                    !- Reference Leaving Chilled Water Temperature {C}
    31.34,                   !- Reference Leaving Condenser Water Temperature {C}
    0.02801,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.03186,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller Carrier 19XR 1157kW/5.62COP/VSD CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller Carrier 19XR 1157kW/5.62COP/VSD EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller Carrier 19XR 1157kW/5.62COP/VSD EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.19,                    !- Minimum Part Load Ratio
    1.01,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.19,                    !- Minimum Unloading Ratio
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
