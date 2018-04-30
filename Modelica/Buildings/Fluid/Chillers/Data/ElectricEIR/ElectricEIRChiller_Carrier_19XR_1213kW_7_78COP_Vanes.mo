within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_Carrier_19XR_1213kW_7_78COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -1213200,
    COP_nominal =         7.78,
    PLRMin =              0.17,
    PLRMinUnl =           0.17,
    PLRMax =              1.02,
    mEva_flow_nominal =   1000 * 0.03243,
    mCon_flow_nominal =   1000 * 0.04782,
    TEvaLvg_nominal =     273.15 + 6.11,
    TConEnt_nominal =     273.15 + 12.78,
    TEvaLvgMin =          273.15 + 6.11,
    TEvaLvgMax =          273.15 + 12.78,
    TConEntMin =          273.15 + 12.78,
    TConEntMax =          273.15 + 23.89,
    capFunT =             {9.070437E-01,-7.437456E-03,-9.695325E-04,1.529092E-02,-1.069664E-03,1.994583E-03},
    EIRFunT =             {1.002142E+00,-2.505239E-02,5.169707E-04,6.321862E-03,5.116807E-04,-4.794244E-04},
    EIRFunPLR =           {2.847744E-01,4.027863E-01,3.114896E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller Carrier 19XR 1213kW/7.78COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller Carrier 19XR 1213kW/7.78COP/Vanes,  !- Name
    1213200,                 !- Reference Capacity {W}
    7.78,                    !- Reference COP {W/W}
    6.11,                    !- Reference Leaving Chilled Water Temperature {C}
    12.78,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.03243,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.04782,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller Carrier 19XR 1213kW/7.78COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller Carrier 19XR 1213kW/7.78COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller Carrier 19XR 1213kW/7.78COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.17,                    !- Minimum Part Load Ratio
    1.02,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.17,                    !- Minimum Unloading Ratio
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
