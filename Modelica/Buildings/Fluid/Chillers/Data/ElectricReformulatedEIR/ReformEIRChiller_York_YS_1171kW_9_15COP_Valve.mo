within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_York_YS_1171kW_9_15COP_Valve =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -1171000,
    COP_nominal =         9.15,
    PLRMin =              0.09,
    PLRMinUnl =           0.09,
    PLRMax =              1.01,
    mEva_flow_nominal =   1000 * 0.03249,
    mCon_flow_nominal =   1000 * 0.05173,
    TEvaLvg_nominal =     273.15 + 6.11,
    TConLvg_nominal =     273.15 + 21.56,
    TEvaLvgMin =          273.15 + 6.11,
    TEvaLvgMax =          273.15 + 12.78,
    TConLvgMin =          273.15 + 21.56,
    TConLvgMax =          273.15 + 30.78,
    capFunT =             {9.337294E-01,1.920636E-02,-6.115577E-04,-7.771906E-04,-2.483077E-04,7.872535E-04},
    EIRFunT =             {3.293911E-01,-2.105626E-02,1.769048E-03,3.636950E-02,4.158157E-04,-1.853560E-03},
    EIRFunPLR =           {-2.154861E-01,3.786873E-02,-1.127341E-05,2.109726E-01,1.287825E+00,-3.728032E-02,0.000000E+00,-2.909471E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0) "ReformEIRChiller York YS 1171kW/9.15COP/Valve"
  annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller York YS 1171kW/9.15COP/Valve,  !- Name
    1171000,                 !- Reference Capacity {W}
    9.15,                    !- Reference COP {W/W}
    6.11,                    !- Reference Leaving Chilled Water Temperature {C}
    21.56,                   !- Reference Leaving Condenser Water Temperature {C}
    0.03249,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.05173,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller York YS 1171kW/9.15COP/Valve CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller York YS 1171kW/9.15COP/Valve EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller York YS 1171kW/9.15COP/Valve EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.09,                    !- Minimum Part Load Ratio
    1.01,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.09,                    !- Minimum Unloading Ratio
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
