within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_York_YK_4969kW_7_14COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -4969000,
    COP_nominal =         7.14,
    PLRMin =              0.16,
    PLRMinUnl =           0.16,
    PLRMax =              1.07,
    mEva_flow_nominal =   1000 * 0.17665,
    mCon_flow_nominal =   1000 * 0.26498,
    TEvaLvg_nominal =     273.15 + 6.67,
    TConLvg_nominal =     273.15 + 31.23,
    TEvaLvgMin =          273.15 + 4.44,
    TEvaLvgMax =          273.15 + 8.89,
    TConLvgMin =          273.15 + 18.57,
    TConLvgMax =          273.15 + 34.55,
    capFunT =             {2.811615E-03,-1.788883E-01,-4.640550E-03,1.472024E-01,-4.625224E-03,1.108352E-02},
    EIRFunT =             {6.916913E-01,-4.760980E-02,1.310678E-03,1.226839E-02,1.561278E-04,1.331849E-04},
    EIRFunPLR =           {3.289463E-01,6.642124E-03,-2.636011E-05,-4.910925E-01,1.639401E+00,-5.204880E-03,0.000000E+00,-4.960251E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0) "ReformEIRChiller York YK 4969kW/7.14COP/Vanes"
  annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller York YK 4969kW/7.14COP/Vanes,  !- Name
    4969000,                 !- Reference Capacity {W}
    7.14,                    !- Reference COP {W/W}
    6.67,                    !- Reference Leaving Chilled Water Temperature {C}
    31.23,                   !- Reference Leaving Condenser Water Temperature {C}
    0.17665,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.26498,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller York YK 4969kW/7.14COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller York YK 4969kW/7.14COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller York YK 4969kW/7.14COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.16,                    !- Minimum Part Load Ratio
    1.07,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.16,                    !- Minimum Unloading Ratio
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
