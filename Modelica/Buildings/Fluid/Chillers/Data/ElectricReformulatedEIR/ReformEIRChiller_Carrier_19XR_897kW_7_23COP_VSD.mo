within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_Carrier_19XR_897kW_7_23COP_VSD =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -896700,
    COP_nominal =         7.23,
    PLRMin =              0.20,
    PLRMinUnl =           0.20,
    PLRMax =              1.04,
    mEva_flow_nominal =   1000 * 0.06782,
    mCon_flow_nominal =   1000 * 0.0436,
    TEvaLvg_nominal =     273.15 + 9.82,
    TConLvg_nominal =     273.15 + 29.49,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 10.00,
    TConLvgMin =          273.15 + 18.72,
    TConLvgMax =          273.15 + 30.41,
    capFunT =             {5.211989E-01,7.968670E-02,-1.488365E-03,1.974850E-02,-4.643458E-04,-7.786719E-04},
    EIRFunT =             {6.970381E-01,5.701647E-02,-2.272629E-04,8.496805E-03,4.752264E-04,-2.759799E-03},
    EIRFunPLR =           {7.280764E-01,-5.949776E-02,3.161338E-05,8.871893E-01,-1.081399E+00,5.804626E-02,0.000000E+00,4.825053E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller Carrier 19XR 897kW/7.23COP/VSD" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller Carrier 19XR 897kW/7.23COP/VSD,  !- Name
    896700,                  !- Reference Capacity {W}
    7.23,                    !- Reference COP {W/W}
    9.82,                    !- Reference Leaving Chilled Water Temperature {C}
    29.49,                   !- Reference Leaving Condenser Water Temperature {C}
    0.06782,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.0436,                  !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller Carrier 19XR 897kW/7.23COP/VSD CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller Carrier 19XR 897kW/7.23COP/VSD EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller Carrier 19XR 897kW/7.23COP/VSD EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.20,                    !- Minimum Part Load Ratio
    1.04,                    !- Maximum Part Load Ratio
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
