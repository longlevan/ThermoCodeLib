within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_Carrier_19XR_823kW_6_28COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -822900,
    COP_nominal =         6.28,
    PLRMin =              0.10,
    PLRMinUnl =           0.10,
    PLRMax =              1.03,
    mEva_flow_nominal =   1000 * 0.03186,
    mCon_flow_nominal =   1000 * 0.04744,
    TEvaLvg_nominal =     273.15 + 5.56,
    TConLvg_nominal =     273.15 + 28.70,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 10.00,
    TConLvgMin =          273.15 + 17.99,
    TConLvgMax =          273.15 + 29.36,
    capFunT =             {3.746558E-01,8.556337E-02,-3.020882E-03,3.745436E-02,-9.995050E-04,-4.477637E-05},
    EIRFunT =             {9.280652E-01,3.277907E-02,7.583449E-04,-2.536152E-02,1.204136E-03,-2.475422E-03},
    EIRFunPLR =           {1.057586E-01,1.472161E-02,-5.875508E-05,6.780787E-01,-6.310911E-02,-1.207949E-02,0.000000E+00,2.498837E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller Carrier 19XR 823kW/6.28COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller Carrier 19XR 823kW/6.28COP/Vanes,  !- Name
    822900,                  !- Reference Capacity {W}
    6.28,                    !- Reference COP {W/W}
    5.56,                    !- Reference Leaving Chilled Water Temperature {C}
    28.70,                   !- Reference Leaving Condenser Water Temperature {C}
    0.03186,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.04744,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller Carrier 19XR 823kW/6.28COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller Carrier 19XR 823kW/6.28COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller Carrier 19XR 823kW/6.28COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.10,                    !- Minimum Part Load Ratio
    1.03,                    !- Maximum Part Load Ratio
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
