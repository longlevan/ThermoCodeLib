within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_York_YT_2233kW_9_54COP_VSD =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -2233000,
    COP_nominal =         9.54,
    PLRMin =              0.10,
    PLRMinUnl =           0.10,
    PLRMax =              1.06,
    mEva_flow_nominal =   1000 * 0.06107,
    mCon_flow_nominal =   1000 * 0.11451,
    TEvaLvg_nominal =     273.15 + 5.56,
    TConLvg_nominal =     273.15 + 17.93,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 8.89,
    TConLvgMin =          273.15 + 17.93,
    TConLvgMax =          273.15 + 34.11,
    capFunT =             {4.939632E-01,-9.743766E-02,6.782771E-03,7.149216E-02,-2.077461E-03,2.246608E-03},
    EIRFunT =             {7.177745E-01,-9.460212E-04,-1.451469E-03,1.431719E-02,5.149926E-04,-8.367784E-04},
    EIRFunPLR =           {4.637900E-01,-3.344690E-02,2.768776E-04,-2.457480E-03,1.477501E+00,1.903803E-02,0.000000E+00,-7.622945E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0) "ReformEIRChiller York YT 2233kW/9.54COP/VSD"
  annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller York YT 2233kW/9.54COP/VSD,  !- Name
    2233000,                 !- Reference Capacity {W}
    9.54,                    !- Reference COP {W/W}
    5.56,                    !- Reference Leaving Chilled Water Temperature {C}
    17.93,                   !- Reference Leaving Condenser Water Temperature {C}
    0.06107,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.11451,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller York YT 2233kW/9.54COP/VSD CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller York YT 2233kW/9.54COP/VSD EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller York YT 2233kW/9.54COP/VSD EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.10,                    !- Minimum Part Load Ratio
    1.06,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.10,                    !- Minimum Unloading Ratio
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
