within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_Carrier_19XR_1234kW_5_39COP_VSD =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -1234300,
    COP_nominal =         5.39,
    PLRMin =              0.19,
    PLRMinUnl =           0.19,
    PLRMax =              1.02,
    mEva_flow_nominal =   1000 * 0.02593,
    mCon_flow_nominal =   1000 * 0.03861,
    TEvaLvg_nominal =     273.15 + 8.89,
    TConLvg_nominal =     273.15 + 35.73,
    TEvaLvgMin =          273.15 + 7.22,
    TEvaLvgMax =          273.15 + 12.78,
    TConLvgMin =          273.15 + 22.24,
    TConLvgMax =          273.15 + 36.28,
    capFunT =             {6.134255E-01,1.092476E-01,-7.352739E-03,-2.589985E-03,-3.793512E-04,1.839978E-03},
    EIRFunT =             {4.746375E-01,9.120326E-02,-7.295060E-03,-5.662273E-03,1.928027E-04,8.244779E-04},
    EIRFunPLR =           {1.207212E-01,-9.914826E-03,1.854918E-05,9.880331E-01,-8.955866E-01,8.894574E-03,0.000000E+00,8.005552E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller Carrier 19XR 1234kW/5.39COP/VSD" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller Carrier 19XR 1234kW/5.39COP/VSD,  !- Name
    1234300,                 !- Reference Capacity {W}
    5.39,                    !- Reference COP {W/W}
    8.89,                    !- Reference Leaving Chilled Water Temperature {C}
    35.73,                   !- Reference Leaving Condenser Water Temperature {C}
    0.02593,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.03861,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller Carrier 19XR 1234kW/5.39COP/VSD CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller Carrier 19XR 1234kW/5.39COP/VSD EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller Carrier 19XR 1234kW/5.39COP/VSD EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.19,                    !- Minimum Part Load Ratio
    1.02,                    !- Maximum Part Load Ratio
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
