within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_York_YT_1048kW_6_06COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -1047900,
    COP_nominal =         6.06,
    PLRMin =              0.10,
    PLRMinUnl =           0.10,
    PLRMax =              1.06,
    mEva_flow_nominal =   1000 * 0.04542,
    mCon_flow_nominal =   1000 * 0.05678,
    TEvaLvg_nominal =     273.15 + 6.67,
    TConLvg_nominal =     273.15 + 34.59,
    TEvaLvgMin =          273.15 + 4.44,
    TEvaLvgMax =          273.15 + 8.89,
    TConLvgMin =          273.15 + 20.43,
    TConLvgMax =          273.15 + 39.72,
    capFunT =             {5.846663E-01,1.059863E-02,-5.058695E-03,3.006085E-02,-9.364366E-04,2.597223E-03},
    EIRFunT =             {7.745270E-01,-3.256346E-02,2.992117E-03,-5.274460E-03,6.701377E-04,-1.236258E-03},
    EIRFunPLR =           {5.753623E-01,-1.409335E-02,-5.983885E-06,6.063425E-01,-3.090569E-01,1.412467E-02,0.000000E+00,1.296066E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0) "ReformEIRChiller York YT 1048kW/6.06COP/Vanes"
  annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller York YT 1048kW/6.06COP/Vanes,  !- Name
    1047900,                 !- Reference Capacity {W}
    6.06,                    !- Reference COP {W/W}
    6.67,                    !- Reference Leaving Chilled Water Temperature {C}
    34.59,                   !- Reference Leaving Condenser Water Temperature {C}
    0.04542,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.05678,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller York YT 1048kW/6.06COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller York YT 1048kW/6.06COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller York YT 1048kW/6.06COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
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
