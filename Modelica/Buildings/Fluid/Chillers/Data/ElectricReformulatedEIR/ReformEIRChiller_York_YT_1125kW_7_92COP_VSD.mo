within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_York_YT_1125kW_7_92COP_VSD =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -1125300,
    COP_nominal =         7.92,
    PLRMin =              0.09,
    PLRMinUnl =           0.09,
    PLRMax =              1.03,
    mEva_flow_nominal =   1000 * 0.03243,
    mCon_flow_nominal =   1000 * 0.05173,
    TEvaLvg_nominal =     273.15 + 6.11,
    TConLvg_nominal =     273.15 + 18.64,
    TEvaLvgMin =          273.15 + 6.11,
    TEvaLvgMax =          273.15 + 12.78,
    TConLvgMin =          273.15 + 18.64,
    TConLvgMax =          273.15 + 31.75,
    capFunT =             {-1.825851E-01,-1.890742E-02,-1.452495E-03,9.494132E-02,-2.160634E-03,2.833148E-03},
    EIRFunT =             {6.772525E-01,-1.573620E-02,1.805356E-03,2.061048E-02,5.587604E-04,-2.014421E-03},
    EIRFunPLR =           {3.110875E-01,-5.972965E-03,-8.888194E-05,-5.317766E-01,1.932563E+00,1.040312E-02,0.000000E+00,-7.660775E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0) "ReformEIRChiller York YT 1125kW/7.92COP/VSD"
  annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller York YT 1125kW/7.92COP/VSD,  !- Name
    1125300,                 !- Reference Capacity {W}
    7.92,                    !- Reference COP {W/W}
    6.11,                    !- Reference Leaving Chilled Water Temperature {C}
    18.64,                   !- Reference Leaving Condenser Water Temperature {C}
    0.03243,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.05173,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller York YT 1125kW/7.92COP/VSD CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller York YT 1125kW/7.92COP/VSD EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller York YT 1125kW/7.92COP/VSD EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.09,                    !- Minimum Part Load Ratio
    1.03,                    !- Maximum Part Load Ratio
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
