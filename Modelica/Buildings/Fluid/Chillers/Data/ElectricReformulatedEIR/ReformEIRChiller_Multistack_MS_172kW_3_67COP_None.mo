within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_Multistack_MS_172kW_3_67COP_None =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -172300,
    COP_nominal =         3.67,
    PLRMin =              0.40,
    PLRMinUnl =           0.40,
    PLRMax =              1.03,
    mEva_flow_nominal =   1000 * 0.00738,
    mCon_flow_nominal =   1000 * 0.00959,
    TEvaLvg_nominal =     273.15 + 4.44,
    TConLvg_nominal =     273.15 + 23.82,
    TEvaLvgMin =          273.15 + 4.44,
    TEvaLvgMax =          273.15 + 8.89,
    TConLvgMin =          273.15 + 23.82,
    TConLvgMax =          273.15 + 40.51,
    capFunT =             {1.127280E+00,1.221754E-01,-4.746140E-03,-2.833951E-02,3.021524E-04,-6.616494E-04},
    EIRFunT =             {8.822430E-01,-6.747171E-02,3.070641E-03,1.073323E-02,1.721572E-04,2.401500E-05},
    EIRFunPLR =           {4.368265E-01,-2.032253E-02,1.212838E-05,5.892153E-01,4.814951E-01,1.957982E-02,0.000000E+00,-4.971216E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller Multistack MS 172kW/3.67COP/None" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller Multistack MS 172kW/3.67COP/None,  !- Name
    172300,                  !- Reference Capacity {W}
    3.67,                    !- Reference COP {W/W}
    4.44,                    !- Reference Leaving Chilled Water Temperature {C}
    23.82,                   !- Reference Leaving Condenser Water Temperature {C}
    0.00738,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.00959,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller Multistack MS 172kW/3.67COP/None CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller Multistack MS 172kW/3.67COP/None EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller Multistack MS 172kW/3.67COP/None EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.40,                    !- Minimum Part Load Ratio
    1.03,                    !- Maximum Part Load Ratio
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
