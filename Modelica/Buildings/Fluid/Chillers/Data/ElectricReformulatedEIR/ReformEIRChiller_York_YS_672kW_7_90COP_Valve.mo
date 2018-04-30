within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_York_YS_672kW_7_90COP_Valve =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -671600,
    COP_nominal =         7.90,
    PLRMin =              0.09,
    PLRMinUnl =           0.09,
    PLRMax =              1.01,
    mEva_flow_nominal =   1000 * 0.01514,
    mCon_flow_nominal =   1000 * 0.0241,
    TEvaLvg_nominal =     273.15 + 6.11,
    TConLvg_nominal =     273.15 + 23.07,
    TEvaLvgMin =          273.15 + 6.11,
    TEvaLvgMax =          273.15 + 12.78,
    TConLvgMin =          273.15 + 23.07,
    TConLvgMax =          273.15 + 32.60,
    capFunT =             {9.653043E-01,3.117948E-02,4.747822E-04,-5.778354E-03,-1.229225E-05,-2.348690E-04},
    EIRFunT =             {1.199355E-01,-6.676229E-03,4.330599E-04,4.300726E-02,1.757823E-04,-1.325426E-03},
    EIRFunPLR =           {7.456160E-01,-2.835399E-02,9.054026E-06,-3.984299E-01,2.016392E+00,2.785056E-02,0.000000E+00,-1.356679E+00,0.000000E+00,0.000000E+00},
    etaMotor =            1.0) "ReformEIRChiller York YS 672kW/7.90COP/Valve"
  annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller York YS 672kW/7.90COP/Valve,  !- Name
    671600,                  !- Reference Capacity {W}
    7.90,                    !- Reference COP {W/W}
    6.11,                    !- Reference Leaving Chilled Water Temperature {C}
    23.07,                   !- Reference Leaving Condenser Water Temperature {C}
    0.01514,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.0241,                  !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller York YS 672kW/7.90COP/Valve CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller York YS 672kW/7.90COP/Valve EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller York YS 672kW/7.90COP/Valve EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.09,                    !- Minimum Part Load Ratio
    1.01,                    !- Maximum Part Load Ratio
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
