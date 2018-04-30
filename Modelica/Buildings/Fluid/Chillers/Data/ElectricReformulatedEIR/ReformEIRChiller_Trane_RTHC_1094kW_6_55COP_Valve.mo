within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_Trane_RTHC_1094kW_6_55COP_Valve =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -1093600,
    COP_nominal =         6.55,
    PLRMin =              0.25,
    PLRMinUnl =           0.25,
    PLRMax =              1.01,
    mEva_flow_nominal =   1000 * 0.04921,
    mCon_flow_nominal =   1000 * 0.04524,
    TEvaLvg_nominal =     273.15 + 5.56,
    TConLvg_nominal =     273.15 + 30.00,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 10.00,
    TConLvgMin =          273.15 + 22.50,
    TConLvgMax =          273.15 + 31.57,
    capFunT =             {9.937063E-01,4.121201E-02,5.647147E-04,-4.466726E-03,-6.255209E-05,-2.959437E-04},
    EIRFunT =             {6.406305E-01,-4.941735E-03,8.316386E-04,-1.042529E-03,6.666939E-04,-1.259813E-03},
    EIRFunPLR =           {-5.793160E-01,4.173392E-02,1.563673E-05,1.609363E+00,-3.325578E-01,-4.262129E-02,0.000000E+00,3.149494E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller Trane RTHC 1094kW/6.55COP/Valve" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller Trane RTHC 1094kW/6.55COP/Valve,  !- Name
    1093600,                 !- Reference Capacity {W}
    6.55,                    !- Reference COP {W/W}
    5.56,                    !- Reference Leaving Chilled Water Temperature {C}
    30.00,                   !- Reference Leaving Condenser Water Temperature {C}
    0.04921,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.04524,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller Trane RTHC 1094kW/6.55COP/Valve CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller Trane RTHC 1094kW/6.55COP/Valve EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller Trane RTHC 1094kW/6.55COP/Valve EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.25,                    !- Minimum Part Load Ratio
    1.01,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.25,                    !- Minimum Unloading Ratio
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
