within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_Trane_CVHF_4610kW_6_34COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -4610300,
    COP_nominal =         6.34,
    PLRMin =              0.20,
    PLRMinUnl =           0.20,
    PLRMax =              1.02,
    mEva_flow_nominal =   1000 * 0.19129,
    mCon_flow_nominal =   1000 * 0.24757,
    TEvaLvg_nominal =     273.15 + 6.67,
    TConLvg_nominal =     273.15 + 31.27,
    TEvaLvgMin =          273.15 + 4.44,
    TEvaLvgMax =          273.15 + 8.89,
    TConLvgMin =          273.15 + 23.15,
    TConLvgMax =          273.15 + 34.76,
    capFunT =             {8.054195E-01,-1.086306E-02,-1.750699E-03,1.269252E-02,-3.913330E-04,1.602126E-03},
    EIRFunT =             {6.849506E-01,-4.909207E-02,-8.308126E-04,1.199218E-02,1.642681E-04,6.761764E-04},
    EIRFunPLR =           {-7.113458E-02,1.278078E-02,-1.151552E-05,1.228548E+00,-1.065066E+00,-1.209695E-02,0.000000E+00,8.979381E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller Trane CVHF 4610kW/6.34COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller Trane CVHF 4610kW/6.34COP/Vanes,  !- Name
    4610300,                 !- Reference Capacity {W}
    6.34,                    !- Reference COP {W/W}
    6.67,                    !- Reference Leaving Chilled Water Temperature {C}
    31.27,                   !- Reference Leaving Condenser Water Temperature {C}
    0.19129,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.24757,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller Trane CVHF 4610kW/6.34COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller Trane CVHF 4610kW/6.34COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller Trane CVHF 4610kW/6.34COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.20,                    !- Minimum Part Load Ratio
    1.02,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.20,                    !- Minimum Unloading Ratio
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
