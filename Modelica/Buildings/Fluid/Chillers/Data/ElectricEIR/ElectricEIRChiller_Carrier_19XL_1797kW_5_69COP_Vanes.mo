within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_Carrier_19XL_1797kW_5_69COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -1797000,
    COP_nominal =         5.69,
    PLRMin =              0.39,
    PLRMinUnl =           0.39,
    PLRMax =              1.01,
    mEva_flow_nominal =   1000 * 0.07737,
    mCon_flow_nominal =   1000 * 0.09672,
    TEvaLvg_nominal =     273.15 + 6.67,
    TConEnt_nominal =     273.15 + 29.44,
    TEvaLvgMin =          273.15 + 6.67,
    TEvaLvgMax =          273.15 + 10.00,
    TConEntMin =          273.15 + 21.11,
    TConEntMax =          273.15 + 29.44,
    capFunT =             {9.084596E-01,4.671596E-02,-1.188845E-03,-2.284596E-03,-3.170254E-05,-3.577858E-04},
    EIRFunT =             {1.084290E+00,-4.318103E-02,1.586113E-03,1.664015E-03,8.043383E-05,5.681056E-05},
    EIRFunPLR =           {5.926251E-01,-2.657314E-01,6.731751E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller Carrier 19XL 1797kW/5.69COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller Carrier 19XL 1797kW/5.69COP/Vanes,  !- Name
    1797000,                 !- Reference Capacity {W}
    5.69,                    !- Reference COP {W/W}
    6.67,                    !- Reference Leaving Chilled Water Temperature {C}
    29.44,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.07737,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.09672,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller Carrier 19XL 1797kW/5.69COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller Carrier 19XL 1797kW/5.69COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller Carrier 19XL 1797kW/5.69COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.39,                    !- Minimum Part Load Ratio
    1.01,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.39,                    !- Minimum Unloading Ratio
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
