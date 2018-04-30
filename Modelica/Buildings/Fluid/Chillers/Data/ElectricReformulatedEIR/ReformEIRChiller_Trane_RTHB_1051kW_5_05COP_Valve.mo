within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_Trane_RTHB_1051kW_5_05COP_Valve =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -1051400,
    COP_nominal =         5.05,
    PLRMin =              0.20,
    PLRMinUnl =           0.20,
    PLRMax =              1.01,
    mEva_flow_nominal =   1000 * 0.04527,
    mCon_flow_nominal =   1000 * 0.05659,
    TEvaLvg_nominal =     273.15 + 6.67,
    TConLvg_nominal =     273.15 + 34.77,
    TEvaLvgMin =          273.15 + 4.44,
    TEvaLvgMax =          273.15 + 8.89,
    TConLvgMin =          273.15 + 28.94,
    TConLvgMax =          273.15 + 40.58,
    capFunT =             {9.638196E-01,3.356030E-02,-6.697810E-05,-3.142817E-03,-6.684016E-05,1.841742E-05},
    EIRFunT =             {4.638880E-01,7.313353E-04,1.440483E-03,3.400471E-03,6.072397E-04,-1.656400E-03},
    EIRFunPLR =           {-2.132575E+01,7.315041E-01,1.435460E-05,1.774494E+01,5.234092E+00,-7.325017E-01,0.000000E+00,-6.363903E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller Trane RTHB 1051kW/5.05COP/Valve" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller Trane RTHB 1051kW/5.05COP/Valve,  !- Name
    1051400,                 !- Reference Capacity {W}
    5.05,                    !- Reference COP {W/W}
    6.67,                    !- Reference Leaving Chilled Water Temperature {C}
    34.77,                   !- Reference Leaving Condenser Water Temperature {C}
    0.04527,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.05659,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller Trane RTHB 1051kW/5.05COP/Valve CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller Trane RTHB 1051kW/5.05COP/Valve EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller Trane RTHB 1051kW/5.05COP/Valve EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.20,                    !- Minimum Part Load Ratio
    1.01,                    !- Maximum Part Load Ratio
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
