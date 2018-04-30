within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_York_YT_1403kW_6_94COP_VSD =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -1403100,
    COP_nominal =         6.94,
    PLRMin =              0.10,
    PLRMinUnl =           0.10,
    PLRMax =              1.13,
    mEva_flow_nominal =   1000 * 0.05047,
    mCon_flow_nominal =   1000 * 0.05047,
    TEvaLvg_nominal =     273.15 + 5.56,
    TConLvg_nominal =     273.15 + 31.50,
    TEvaLvgMin =          273.15 + 4.44,
    TEvaLvgMax =          273.15 + 8.89,
    TConLvgMin =          273.15 + 21.33,
    TConLvgMax =          273.15 + 36.28,
    capFunT =             {-1.721714E+00,8.594308E-02,-1.220844E-02,2.037396E-01,-4.654718E-03,4.701301E-03},
    EIRFunT =             {5.348381E-01,-1.779962E-02,-4.925343E-03,1.066975E-02,9.573974E-05,1.717894E-03},
    EIRFunPLR =           {1.005500E+00,3.906974E-02,-7.721440E-06,-5.794857E+00,9.282464E+00,-3.755116E-02,0.000000E+00,-3.524493E+00,0.000000E+00,0.000000E+00},
    etaMotor =            1.0) "ReformEIRChiller York YT 1403kW/6.94COP/VSD"
  annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller York YT 1403kW/6.94COP/VSD,  !- Name
    1403100,                 !- Reference Capacity {W}
    6.94,                    !- Reference COP {W/W}
    5.56,                    !- Reference Leaving Chilled Water Temperature {C}
    31.50,                   !- Reference Leaving Condenser Water Temperature {C}
    0.05047,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.05047,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller York YT 1403kW/6.94COP/VSD CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller York YT 1403kW/6.94COP/VSD EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller York YT 1403kW/6.94COP/VSD EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.10,                    !- Minimum Part Load Ratio
    1.13,                    !- Maximum Part Load Ratio
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
