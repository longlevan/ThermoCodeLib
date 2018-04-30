within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_York_YK_4537kW_6_28COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -4536500,
    COP_nominal =         6.28,
    PLRMin =              0.40,
    PLRMinUnl =           0.40,
    PLRMax =              1.04,
    mEva_flow_nominal =   1000 * 0.19558,
    mCon_flow_nominal =   1000 * 0.24605,
    TEvaLvg_nominal =     273.15 + 6.67,
    TConLvg_nominal =     273.15 + 31.78,
    TEvaLvgMin =          273.15 + 4.44,
    TEvaLvgMax =          273.15 + 7.78,
    TConLvgMin =          273.15 + 19.77,
    TConLvgMax =          273.15 + 31.78,
    capFunT =             {1.769339E-01,8.033367E-04,-1.299649E-02,1.160227E-01,-4.192731E-03,9.339837E-03},
    EIRFunT =             {8.920183E-01,-1.501518E-02,1.467430E-03,-1.261335E-02,8.431355E-04,-1.426299E-03},
    EIRFunPLR =           {1.718938E-01,6.637990E-03,1.666991E-05,1.634153E-01,9.517270E-01,-7.705773E-03,0.000000E+00,-2.724674E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0) "ReformEIRChiller York YK 4537kW/6.28COP/Vanes"
  annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller York YK 4537kW/6.28COP/Vanes,  !- Name
    4536500,                 !- Reference Capacity {W}
    6.28,                    !- Reference COP {W/W}
    6.67,                    !- Reference Leaving Chilled Water Temperature {C}
    31.78,                   !- Reference Leaving Condenser Water Temperature {C}
    0.19558,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.24605,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller York YK 4537kW/6.28COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller York YK 4537kW/6.28COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller York YK 4537kW/6.28COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.40,                    !- Minimum Part Load Ratio
    1.04,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.40,                    !- Minimum Unloading Ratio
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
