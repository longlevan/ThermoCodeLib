within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_McQuay_PEH_1934kW_6_01COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -1934100,
    COP_nominal =         6.01,
    PLRMin =              0.10,
    PLRMinUnl =           0.10,
    PLRMax =              1.08,
    mEva_flow_nominal =   1000 * 0.05552,
    mCon_flow_nominal =   1000 * 0.07981,
    TEvaLvg_nominal =     273.15 + 5.56,
    TConEnt_nominal =     273.15 + 22.78,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 8.89,
    TConEntMin =          273.15 + 12.78,
    TConEntMax =          273.15 + 29.44,
    capFunT =             {2.893111E-01,-3.834949E-02,1.757934E-03,8.665805E-02,-2.597243E-03,2.413315E-03},
    EIRFunT =             {2.885371E-01,-5.877829E-03,-1.807763E-03,5.193076E-02,-7.936373E-04,1.108590E-03},
    EIRFunPLR =           {3.849256E-01,-2.369152E-01,8.496351E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller McQuay PEH 1934kW/6.01COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller McQuay PEH 1934kW/6.01COP/Vanes,  !- Name
    1934100,                 !- Reference Capacity {W}
    6.01,                    !- Reference COP {W/W}
    5.56,                    !- Reference Leaving Chilled Water Temperature {C}
    22.78,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.05552,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.07981,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller McQuay PEH 1934kW/6.01COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller McQuay PEH 1934kW/6.01COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller McQuay PEH 1934kW/6.01COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.10,                    !- Minimum Part Load Ratio
    1.08,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.10,                    !- Minimum Unloading Ratio
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
