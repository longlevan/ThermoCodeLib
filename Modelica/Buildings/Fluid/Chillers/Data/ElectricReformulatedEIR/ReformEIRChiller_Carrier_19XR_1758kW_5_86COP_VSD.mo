within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_Carrier_19XR_1758kW_5_86COP_VSD =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -1758300,
    COP_nominal =         5.86,
    PLRMin =              0.20,
    PLRMinUnl =           0.20,
    PLRMax =              1.02,
    mEva_flow_nominal =   1000 * 0.06303,
    mCon_flow_nominal =   1000 * 0.07337,
    TEvaLvg_nominal =     273.15 + 5.56,
    TConLvg_nominal =     273.15 + 31.15,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 10.00,
    TConLvgMin =          273.15 + 17.86,
    TConLvgMax =          273.15 + 31.43,
    capFunT =             {9.528317E-02,-4.119086E-02,-3.854298E-03,7.698517E-02,-1.945011E-03,4.285126E-03},
    EIRFunT =             {-6.333861E-02,-5.533069E-02,-4.591740E-03,7.468402E-02,-1.455300E-03,3.506040E-03},
    EIRFunPLR =           {1.251509E+00,-9.433150E-02,-2.849753E-05,8.544238E-01,-1.491994E+00,9.568956E-02,0.000000E+00,3.698862E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller Carrier 19XR 1758kW/5.86COP/VSD" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller Carrier 19XR 1758kW/5.86COP/VSD,  !- Name
    1758300,                 !- Reference Capacity {W}
    5.86,                    !- Reference COP {W/W}
    5.56,                    !- Reference Leaving Chilled Water Temperature {C}
    31.15,                   !- Reference Leaving Condenser Water Temperature {C}
    0.06303,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.07337,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller Carrier 19XR 1758kW/5.86COP/VSD CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller Carrier 19XR 1758kW/5.86COP/VSD EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller Carrier 19XR 1758kW/5.86COP/VSD EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.20,                    !- Minimum Part Load Ratio
    1.02,                    !- Maximum Part Load Ratio
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
