within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_Trane_RTHB_538kW_5_12COP_Valve =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -538000,
    COP_nominal =         5.12,
    PLRMin =              0.30,
    PLRMinUnl =           0.30,
    PLRMax =              1.01,
    mEva_flow_nominal =   1000 * 0.01375,
    mCon_flow_nominal =   1000 * 0.01956,
    TEvaLvg_nominal =     273.15 + 5.56,
    TConLvg_nominal =     273.15 + 31.75,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 10.00,
    TConLvgMin =          273.15 + 23.52,
    TConLvgMax =          273.15 + 32.74,
    capFunT =             {9.326777E-01,2.745642E-02,3.991103E-04,1.073891E-03,-1.335614E-04,1.399941E-05},
    EIRFunT =             {4.761769E-01,-3.860230E-03,6.543433E-04,7.029128E-03,4.964676E-04,-1.113233E-03},
    EIRFunPLR =           {2.185505E+00,-9.516501E-02,2.591946E-05,-1.849602E+00,2.059148E+00,9.366870E-02,0.000000E+00,-1.373917E+00,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller Trane RTHB 538kW/5.12COP/Valve" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller Trane RTHB 538kW/5.12COP/Valve,  !- Name
    538000,                  !- Reference Capacity {W}
    5.12,                    !- Reference COP {W/W}
    5.56,                    !- Reference Leaving Chilled Water Temperature {C}
    31.75,                   !- Reference Leaving Condenser Water Temperature {C}
    0.01375,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.01956,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller Trane RTHB 538kW/5.12COP/Valve CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller Trane RTHB 538kW/5.12COP/Valve EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller Trane RTHB 538kW/5.12COP/Valve EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
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
