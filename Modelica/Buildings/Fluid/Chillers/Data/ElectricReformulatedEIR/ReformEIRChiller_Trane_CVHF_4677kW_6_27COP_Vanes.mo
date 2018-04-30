within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_Trane_CVHF_4677kW_6_27COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -4677100,
    COP_nominal =         6.27,
    PLRMin =              0.41,
    PLRMinUnl =           0.41,
    PLRMax =              1.03,
    mEva_flow_nominal =   1000 * 0.20138,
    mCon_flow_nominal =   1000 * 0.24605,
    TEvaLvg_nominal =     273.15 + 6.67,
    TConLvg_nominal =     273.15 + 31.94,
    TEvaLvgMin =          273.15 + 4.44,
    TEvaLvgMax =          273.15 + 7.78,
    TConLvgMin =          273.15 + 17.51,
    TConLvgMax =          273.15 + 31.94,
    capFunT =             {8.138295E-01,-2.315871E-02,6.181089E-03,8.639578E-03,-1.807173E-04,-5.015921E-05},
    EIRFunT =             {8.371931E-01,-1.837487E-02,3.992101E-03,-8.582353E-03,6.821892E-04,-1.443699E-03},
    EIRFunPLR =           {-3.243462E-01,1.463635E-02,-8.320365E-05,1.978667E+00,-2.019795E+00,-1.072468E-02,0.000000E+00,1.320583E+00,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller Trane CVHF 4677kW/6.27COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller Trane CVHF 4677kW/6.27COP/Vanes,  !- Name
    4677100,                 !- Reference Capacity {W}
    6.27,                    !- Reference COP {W/W}
    6.67,                    !- Reference Leaving Chilled Water Temperature {C}
    31.94,                   !- Reference Leaving Condenser Water Temperature {C}
    0.20138,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.24605,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller Trane CVHF 4677kW/6.27COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller Trane CVHF 4677kW/6.27COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller Trane CVHF 4677kW/6.27COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.41,                    !- Minimum Part Load Ratio
    1.03,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.41,                    !- Minimum Unloading Ratio
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
