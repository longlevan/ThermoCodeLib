within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_Carrier_19XR_1350kW_7_90COP_VSD =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -1350400,
    COP_nominal =         7.90,
    PLRMin =              0.19,
    PLRMinUnl =           0.19,
    PLRMax =              1.02,
    mEva_flow_nominal =   1000 * 0.03684,
    mCon_flow_nominal =   1000 * 0.05337,
    TEvaLvg_nominal =     273.15 + 5.56,
    TConLvg_nominal =     273.15 + 19.60,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 8.89,
    TConLvgMin =          273.15 + 19.55,
    TConLvgMax =          273.15 + 30.85,
    capFunT =             {1.060586E+00,-2.817204E-02,-1.079479E-03,3.977058E-03,-4.166057E-04,1.992778E-03},
    EIRFunT =             {9.661627E-01,-1.568504E-02,2.272739E-03,-3.411051E-03,8.026386E-04,-1.764450E-03},
    EIRFunPLR =           {1.868582E+00,-1.412449E-01,2.563520E-04,8.432680E-01,-1.538206E+00,1.292323E-01,0.000000E+00,-3.507772E-02,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller Carrier 19XR 1350kW/7.90COP/VSD" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller Carrier 19XR 1350kW/7.90COP/VSD,  !- Name
    1350400,                 !- Reference Capacity {W}
    7.90,                    !- Reference COP {W/W}
    5.56,                    !- Reference Leaving Chilled Water Temperature {C}
    19.60,                   !- Reference Leaving Condenser Water Temperature {C}
    0.03684,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.05337,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller Carrier 19XR 1350kW/7.90COP/VSD CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller Carrier 19XR 1350kW/7.90COP/VSD EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller Carrier 19XR 1350kW/7.90COP/VSD EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.19,                    !- Minimum Part Load Ratio
    1.02,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.19,                    !- Minimum Unloading Ratio
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
