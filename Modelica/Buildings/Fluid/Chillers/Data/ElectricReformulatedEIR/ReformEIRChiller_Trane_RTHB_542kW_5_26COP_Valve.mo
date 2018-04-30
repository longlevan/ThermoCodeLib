within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_Trane_RTHB_542kW_5_26COP_Valve =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -541500,
    COP_nominal =         5.26,
    PLRMin =              0.30,
    PLRMinUnl =           0.30,
    PLRMax =              1.01,
    mEva_flow_nominal =   1000 * 0.01363,
    mCon_flow_nominal =   1000 * 0.01577,
    TEvaLvg_nominal =     273.15 + 5.56,
    TConLvg_nominal =     273.15 + 30.89,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 10.00,
    TConLvgMin =          273.15 + 25.39,
    TConLvgMax =          273.15 + 34.83,
    capFunT =             {9.292432E-01,2.977220E-02,4.279686E-04,-1.825578E-04,-9.143496E-05,-8.471843E-05},
    EIRFunT =             {2.877196E-01,-1.191161E-02,7.252148E-04,2.352346E-02,2.033310E-04,-9.517160E-04},
    EIRFunPLR =           {1.837065E+00,-7.719197E-02,-1.307430E-06,-1.063492E+00,6.874543E-01,7.728359E-02,0.000000E+00,-4.626311E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller Trane RTHB 542kW/5.26COP/Valve" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller Trane RTHB 542kW/5.26COP/Valve,  !- Name
    541500,                  !- Reference Capacity {W}
    5.26,                    !- Reference COP {W/W}
    5.56,                    !- Reference Leaving Chilled Water Temperature {C}
    30.89,                   !- Reference Leaving Condenser Water Temperature {C}
    0.01363,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.01577,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller Trane RTHB 542kW/5.26COP/Valve CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller Trane RTHB 542kW/5.26COP/Valve EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller Trane RTHB 542kW/5.26COP/Valve EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
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
