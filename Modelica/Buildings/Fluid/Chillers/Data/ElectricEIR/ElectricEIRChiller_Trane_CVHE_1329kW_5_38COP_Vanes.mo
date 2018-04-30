within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_Trane_CVHE_1329kW_5_38COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -1329300,
    COP_nominal =         5.38,
    PLRMin =              0.29,
    PLRMinUnl =           0.29,
    PLRMax =              1.05,
    mEva_flow_nominal =   1000 * 0.04732,
    mCon_flow_nominal =   1000 * 0.07098,
    TEvaLvg_nominal =     273.15 + 6.11,
    TConEnt_nominal =     273.15 + 29.44,
    TEvaLvgMin =          273.15 + 6.11,
    TEvaLvgMax =          273.15 + 10.00,
    TConEntMin =          273.15 + 21.11,
    TConEntMax =          273.15 + 29.44,
    capFunT =             {5.339754E-01,1.016009E-01,-3.979592E-03,1.261254E-02,-4.666667E-04,-8.351648E-05},
    EIRFunT =             {8.074052E-01,3.355495E-02,-1.549617E-03,-7.142554E-03,5.056363E-04,-7.547786E-04},
    EIRFunPLR =           {4.079777E-02,1.174456E+00,-2.212711E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller Trane CVHE 1329kW/5.38COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller Trane CVHE 1329kW/5.38COP/Vanes,  !- Name
    1329300,                 !- Reference Capacity {W}
    5.38,                    !- Reference COP {W/W}
    6.11,                    !- Reference Leaving Chilled Water Temperature {C}
    29.44,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.04732,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.07098,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller Trane CVHE 1329kW/5.38COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller Trane CVHE 1329kW/5.38COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller Trane CVHE 1329kW/5.38COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.29,                    !- Minimum Part Load Ratio
    1.05,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.29,                    !- Minimum Unloading Ratio
    Chilled Water Side Inlet Node,  !- Chilled Water Inlet Node Name
    Chilled Water Side Outlet Node,  !- Chilled Water Outlet Node Name
    Condenser Side Inlet Node,  !- Condenser Inlet Node Name
    Condenser Side Outlet Node,  !- Condenser Outlet Node Name
    WaterCooled,             !- Condenser Type
    ,                        !- Condenser Fan Power Ratio {W/W}
    1.0,                     !- Compressor Motor Efficiency
    2.0,                     !- Leaving Chilled Water Lower Temperature Limit {C}
    ConstantFlow,            !- Chiller Flow Mode
    0.0;                     !- Design Heat Recovery Water Flow Rate {m3/s}
</pre>
</html>"));
