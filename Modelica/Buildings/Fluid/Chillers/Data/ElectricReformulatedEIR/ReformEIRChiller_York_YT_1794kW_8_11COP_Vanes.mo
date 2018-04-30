within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_York_YT_1794kW_8_11COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -1793500,
    COP_nominal =         8.11,
    PLRMin =              0.10,
    PLRMinUnl =           0.10,
    PLRMax =              1.08,
    mEva_flow_nominal =   1000 * 0.05148,
    mCon_flow_nominal =   1000 * 0.09653,
    TEvaLvg_nominal =     273.15 + 7.22,
    TConLvg_nominal =     273.15 + 28.88,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 8.89,
    TConLvgMin =          273.15 + 18.71,
    TConLvgMax =          273.15 + 34.34,
    capFunT =             {1.475615E+00,-2.480005E-01,1.353388E-02,5.216264E-02,-2.330109E-03,5.131852E-03},
    EIRFunT =             {1.190864E+00,3.400270E-01,-8.717000E-03,-1.107704E-01,3.433891E-03,-8.538300E-03},
    EIRFunPLR =           {-9.081317E-02,1.524614E-02,8.256304E-04,-6.921348E-01,4.110008E+00,-6.003188E-02,0.000000E+00,-1.751625E+00,0.000000E+00,0.000000E+00},
    etaMotor =            1.0) "ReformEIRChiller York YT 1794kW/8.11COP/Vanes"
  annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller York YT 1794kW/8.11COP/Vanes,  !- Name
    1793500,                 !- Reference Capacity {W}
    8.11,                    !- Reference COP {W/W}
    7.22,                    !- Reference Leaving Chilled Water Temperature {C}
    28.88,                   !- Reference Leaving Condenser Water Temperature {C}
    0.05148,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.09653,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller York YT 1794kW/8.11COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller York YT 1794kW/8.11COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller York YT 1794kW/8.11COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.10,                    !- Minimum Part Load Ratio
    1.08,                    !- Maximum Part Load Ratio
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
