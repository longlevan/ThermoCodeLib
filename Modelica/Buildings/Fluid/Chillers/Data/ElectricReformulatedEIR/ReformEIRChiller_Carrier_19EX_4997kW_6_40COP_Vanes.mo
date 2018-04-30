within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_Carrier_19EX_4997kW_6_40COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -4997200,
    COP_nominal =         6.40,
    PLRMin =              0.40,
    PLRMinUnl =           0.40,
    PLRMax =              1.04,
    mEva_flow_nominal =   1000 * 0.19558,
    mCon_flow_nominal =   1000 * 0.24605,
    TEvaLvg_nominal =     273.15 + 6.67,
    TConLvg_nominal =     273.15 + 32.28,
    TEvaLvgMin =          273.15 + 4.44,
    TEvaLvgMax =          273.15 + 7.78,
    TConLvgMin =          273.15 + 17.18,
    TConLvgMax =          273.15 + 32.28,
    capFunT =             {-2.686142E-01,-4.640249E-02,-7.791139E-03,1.116057E-01,-3.040750E-03,6.823316E-03},
    EIRFunT =             {7.502378E-01,-8.546174E-03,3.952892E-03,-7.194001E-03,8.754798E-04,-2.523240E-03},
    EIRFunPLR =           {6.778244E-01,-1.674571E-02,-1.069925E-05,2.261951E-01,-1.572357E-02,1.714268E-02,0.000000E+00,1.072291E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller Carrier 19EX 4997kW/6.40COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller Carrier 19EX 4997kW/6.40COP/Vanes,  !- Name
    4997200,                 !- Reference Capacity {W}
    6.40,                    !- Reference COP {W/W}
    6.67,                    !- Reference Leaving Chilled Water Temperature {C}
    32.28,                   !- Reference Leaving Condenser Water Temperature {C}
    0.19558,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.24605,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller Carrier 19EX 4997kW/6.40COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller Carrier 19EX 4997kW/6.40COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller Carrier 19EX 4997kW/6.40COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
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
