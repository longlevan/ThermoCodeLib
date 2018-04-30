within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_Trane_CGWD_207kW_3_99COP_None =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -207400,
    COP_nominal =         3.99,
    PLRMin =              0.25,
    PLRMinUnl =           0.25,
    PLRMax =              1.01,
    mEva_flow_nominal =   1000 * 0.00898,
    mCon_flow_nominal =   1000 * 0.01122,
    TEvaLvg_nominal =     273.15 + 6.67,
    TConLvg_nominal =     273.15 + 35.00,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 10.00,
    TConLvgMin =          273.15 + 29.37,
    TConLvgMax =          273.15 + 40.94,
    capFunT =             {9.585465E-01,3.516870E-02,1.246624E-04,-2.745559E-03,-5.000232E-05,-1.723494E-04},
    EIRFunT =             {7.327001E-01,-8.343605E-03,6.385302E-04,-3.037535E-03,4.849529E-04,-8.358498E-04},
    EIRFunPLR =           {7.086284E-02,2.787561E-03,-8.917038E-06,2.309734E-01,1.250442E+00,-2.161029E-03,0.000000E+00,-5.630094E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0) "ReformEIRChiller Trane CGWD 207kW/3.99COP/None"
  annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller Trane CGWD 207kW/3.99COP/None,  !- Name
    207400,                  !- Reference Capacity {W}
    3.99,                    !- Reference COP {W/W}
    6.67,                    !- Reference Leaving Chilled Water Temperature {C}
    35.00,                   !- Reference Leaving Condenser Water Temperature {C}
    0.00898,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.01122,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller Trane CGWD 207kW/3.99COP/None CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller Trane CGWD 207kW/3.99COP/None EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller Trane CGWD 207kW/3.99COP/None EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
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
