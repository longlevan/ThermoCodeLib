within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_York_YK_2159kW_6_85COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -2159200,
    COP_nominal =         6.85,
    PLRMin =              0.14,
    PLRMinUnl =           0.14,
    PLRMax =              1.05,
    mEva_flow_nominal =   1000 * 0.07571,
    mCon_flow_nominal =   1000 * 0.11356,
    TEvaLvg_nominal =     273.15 + 6.67,
    TConLvg_nominal =     273.15 + 31.32,
    TEvaLvgMin =          273.15 + 4.44,
    TEvaLvgMax =          273.15 + 8.89,
    TConLvgMin =          273.15 + 21.13,
    TConLvgMax =          273.15 + 34.75,
    capFunT =             {-5.164056E-02,-7.384855E-02,-1.036241E-02,1.201446E-01,-3.881099E-03,9.873049E-03},
    EIRFunT =             {1.013059E+00,2.176325E-03,-4.682395E-04,-1.887683E-02,7.444727E-04,-6.685547E-04},
    EIRFunPLR =           {2.315688E-02,2.746250E-02,-2.345600E-05,-4.728932E-01,1.778530E+00,-2.621741E-02,0.000000E+00,-3.448533E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0) "ReformEIRChiller York YK 2159kW/6.85COP/Vanes"
  annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller York YK 2159kW/6.85COP/Vanes,  !- Name
    2159200,                 !- Reference Capacity {W}
    6.85,                    !- Reference COP {W/W}
    6.67,                    !- Reference Leaving Chilled Water Temperature {C}
    31.32,                   !- Reference Leaving Condenser Water Temperature {C}
    0.07571,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.11356,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller York YK 2159kW/6.85COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller York YK 2159kW/6.85COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller York YK 2159kW/6.85COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.14,                    !- Minimum Part Load Ratio
    1.05,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.14,                    !- Minimum Unloading Ratio
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
