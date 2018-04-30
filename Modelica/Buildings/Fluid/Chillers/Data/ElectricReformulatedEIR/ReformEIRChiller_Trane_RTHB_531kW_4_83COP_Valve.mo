within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_Trane_RTHB_531kW_4_83COP_Valve =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -531000,
    COP_nominal =         4.83,
    PLRMin =              0.30,
    PLRMinUnl =           0.30,
    PLRMax =              1.01,
    mEva_flow_nominal =   1000 * 0.0135,
    mCon_flow_nominal =   1000 * 0.01577,
    TEvaLvg_nominal =     273.15 + 5.56,
    TConLvg_nominal =     273.15 + 33.61,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 10.00,
    TConLvgMin =          273.15 + 25.39,
    TConLvgMax =          273.15 + 34.83,
    capFunT =             {9.079958E-01,1.147213E-02,8.474223E-04,7.750840E-03,-2.955319E-04,3.620562E-04},
    EIRFunT =             {3.048223E-01,1.023123E-02,2.011952E-04,1.296369E-02,4.087926E-04,-1.374337E-03},
    EIRFunPLR =           {4.560311E+00,-2.031290E-01,8.212225E-05,-4.899042E+00,5.087775E+00,1.981069E-01,0.000000E+00,-3.673772E+00,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller Trane RTHB 531kW/4.83COP/Valve" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller Trane RTHB 531kW/4.83COP/Valve,  !- Name
    531000,                  !- Reference Capacity {W}
    4.83,                    !- Reference COP {W/W}
    5.56,                    !- Reference Leaving Chilled Water Temperature {C}
    33.61,                   !- Reference Leaving Condenser Water Temperature {C}
    0.0135,                  !- Reference Chilled Water Flow Rate {m3/s}
    0.01577,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller Trane RTHB 531kW/4.83COP/Valve CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller Trane RTHB 531kW/4.83COP/Valve EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller Trane RTHB 531kW/4.83COP/Valve EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.30,                    !- Minimum Part Load Ratio
    1.01,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.30,                    !- Minimum Unloading Ratio
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
