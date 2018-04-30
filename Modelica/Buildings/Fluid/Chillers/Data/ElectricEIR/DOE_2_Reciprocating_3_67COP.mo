within Buildings.Fluid.Chillers.Data.ElectricEIR;
record DOE_2_Reciprocating_3_67COP =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -100000.0,
    COP_nominal =         3.67,
    PLRMin =              0.1,
    PLRMinUnl =           0.2,
    PLRMax =              1.0,
    mEva_flow_nominal =   1000 * 0.0022,
    mCon_flow_nominal =   1000 * 0.0044,
    TEvaLvg_nominal =     273.15 + 6.67,
    TConEnt_nominal =     273.15 + 29.4,
    TEvaLvgMin =          273.15 + 5.0,
    TEvaLvgMax =          273.15 + 10.0,
    TConEntMin =          273.15 + 24.0,
    TConEntMax =          273.15 + 35.0,
    capFunT =             {0.507883E+00,0.145228E+00,-0.625644E-02,-0.111780E-02,-0.129600E-03,-0.281880E-03},
    EIRFunT =             {0.103076E+01,-0.103536E+00,0.710208E-02,0.931860E-02,0.317520E-03,-0.104328E-02},
    EIRFunPLR =           {0.088065,1.137742,-0.225806},
    etaMotor =            1.0) "DOE-2 Reciprocating/3.67COP" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    DOE-2 Reciprocating/3.67COP,  !- Name
    Autosize,                !- Reference Capacity {W}
    3.67,                    !- Reference COP {W/W}
    6.67,                    !- Reference Leaving Chilled Water Temperature {C}
    29.4,                    !- Reference Entering Condenser Fluid Temperature {C}
    Autosize,                !- Reference Chilled Water Flow Rate {m3/s}
    Autosize,                !- Reference Condenser Water Flow Rate {m3/s}
    DOE-2 Reciprocating/3.67COP CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    DOE-2 Reciprocating/3.67COP EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    DOE-2 Reciprocating/3.67COP EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.1,                     !- Minimum Part Load Ratio
    1.0,                     !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.2,                     !- Minimum Unloading Ratio
    Chilled Water Side Inlet Node,  !- Chilled Water Inlet Node Name
    Chilled Water Side Outlet Node,  !- Chilled Water Outlet Node Name
    Condenser Side Inlet Node,  !- Condenser Inlet Node Name
    Condenser Side Outlet Node,  !- Condenser Outlet Node Name
    WaterCooled,             !- Condenser Type
    ,                        !- Condenser Fan Power Ratio {W/W}
    1.0,                     !- Compressor Motor Efficiency
    2.0,                     !- Leaving Chilled Water Lower Temperature Limit {C}
    ConstantFlow;            !- Chiller Flow Mode

</pre>
</html>"));
