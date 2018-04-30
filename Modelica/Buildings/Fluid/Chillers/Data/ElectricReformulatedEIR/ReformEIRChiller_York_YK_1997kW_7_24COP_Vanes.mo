within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_York_YK_1997kW_7_24COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -1997400,
    COP_nominal =         7.24,
    PLRMin =              0.18,
    PLRMinUnl =           0.18,
    PLRMax =              1.07,
    mEva_flow_nominal =   1000 * 0.04397,
    mCon_flow_nominal =   1000 * 0.1041,
    TEvaLvg_nominal =     273.15 + 8.89,
    TConLvg_nominal =     273.15 + 31.89,
    TEvaLvgMin =          273.15 + 7.22,
    TEvaLvgMax =          273.15 + 12.78,
    TConLvgMin =          273.15 + 19.16,
    TConLvgMax =          273.15 + 32.70,
    capFunT =             {1.039493E+00,1.593009E-01,-3.989073E-03,-3.812180E-02,2.881779E-04,-7.520087E-04},
    EIRFunT =             {1.550813E-01,1.022114E-01,-6.511170E-04,-1.241272E-02,1.514358E-03,-4.090377E-03},
    EIRFunPLR =           {1.838759E-01,-1.009515E-02,1.677624E-04,9.181489E-01,-2.434151E-02,1.727052E-03,0.000000E+00,2.527075E-02,0.000000E+00,0.000000E+00},
    etaMotor =            1.0) "ReformEIRChiller York YK 1997kW/7.24COP/Vanes"
  annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller York YK 1997kW/7.24COP/Vanes,  !- Name
    1997400,                 !- Reference Capacity {W}
    7.24,                    !- Reference COP {W/W}
    8.89,                    !- Reference Leaving Chilled Water Temperature {C}
    31.89,                   !- Reference Leaving Condenser Water Temperature {C}
    0.04397,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.1041,                  !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller York YK 1997kW/7.24COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller York YK 1997kW/7.24COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller York YK 1997kW/7.24COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.18,                    !- Minimum Part Load Ratio
    1.07,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.18,                    !- Minimum Unloading Ratio
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
