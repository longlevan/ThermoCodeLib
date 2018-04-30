within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_Carrier_23XL_724kW_6_04COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -724400,
    COP_nominal =         6.04,
    PLRMin =              0.19,
    PLRMinUnl =           0.19,
    PLRMax =              1.04,
    mEva_flow_nominal =   1000 * 0.01779,
    mCon_flow_nominal =   1000 * 0.01956,
    TEvaLvg_nominal =     273.15 + 5.56,
    TConEnt_nominal =     273.15 + 21.11,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 10.00,
    TConEntMin =          273.15 + 13.75,
    TConEntMax =          273.15 + 23.89,
    capFunT =             {4.418712E-01,-8.384251E-02,-2.190707E-03,8.594633E-02,-3.322575E-03,6.652189E-03},
    EIRFunT =             {5.059102E-01,-1.621557E-02,3.346388E-04,2.350906E-02,3.514201E-04,-6.342981E-04},
    EIRFunPLR =           {1.879418E-01,3.562862E-01,4.540392E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller Carrier 23XL 724kW/6.04COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller Carrier 23XL 724kW/6.04COP/Vanes,  !- Name
    724400,                  !- Reference Capacity {W}
    6.04,                    !- Reference COP {W/W}
    5.56,                    !- Reference Leaving Chilled Water Temperature {C}
    21.11,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.01779,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.01956,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller Carrier 23XL 724kW/6.04COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller Carrier 23XL 724kW/6.04COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller Carrier 23XL 724kW/6.04COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.19,                    !- Minimum Part Load Ratio
    1.04,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.19,                    !- Minimum Unloading Ratio
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
