within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_York_YK_2771kW_6_84COP_VSD =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -2771100,
    COP_nominal =         6.84,
    PLRMin =              0.20,
    PLRMinUnl =           0.20,
    PLRMax =              1.03,
    mEva_flow_nominal =   1000 * 0.10094,
    mCon_flow_nominal =   1000 * 0.15142,
    TEvaLvg_nominal =     273.15 + 5.56,
    TConLvg_nominal =     273.15 + 28.91,
    TEvaLvgMin =          273.15 + 4.44,
    TEvaLvgMax =          273.15 + 8.89,
    TConLvgMin =          273.15 + 18.24,
    TConLvgMax =          273.15 + 34.26,
    capFunT =             {4.744171E-01,3.178084E-02,-1.802780E-03,5.380910E-02,-1.642699E-03,1.330445E-03},
    EIRFunT =             {8.286811E-01,2.304403E-02,-6.841126E-04,-1.886483E-02,1.088152E-03,-1.846484E-03},
    EIRFunPLR =           {-6.205477E-01,5.913283E-02,-1.627433E-05,1.051821E-01,1.413365E+00,-5.839529E-02,0.000000E+00,9.424834E-02,0.000000E+00,0.000000E+00},
    etaMotor =            1.0) "ReformEIRChiller York YK 2771kW/6.84COP/VSD"
  annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller York YK 2771kW/6.84COP/VSD,  !- Name
    2771100,                 !- Reference Capacity {W}
    6.84,                    !- Reference COP {W/W}
    5.56,                    !- Reference Leaving Chilled Water Temperature {C}
    28.91,                   !- Reference Leaving Condenser Water Temperature {C}
    0.10094,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.15142,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller York YK 2771kW/6.84COP/VSD CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller York YK 2771kW/6.84COP/VSD EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller York YK 2771kW/6.84COP/VSD EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.20,                    !- Minimum Part Load Ratio
    1.03,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.20,                    !- Minimum Unloading Ratio
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
