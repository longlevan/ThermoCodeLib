within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_York_YT_1867kW_10_09COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -1867300,
    COP_nominal =         10.09,
    PLRMin =              0.09,
    PLRMinUnl =           0.09,
    PLRMax =              1.04,
    mEva_flow_nominal =   1000 * 0.07571,
    mCon_flow_nominal =   1000 * 0.09085,
    TEvaLvg_nominal =     273.15 + 7.78,
    TConEnt_nominal =     273.15 + 12.78,
    TEvaLvgMin =          273.15 + 4.44,
    TEvaLvgMax =          273.15 + 8.89,
    TConEntMin =          273.15 + 12.78,
    TConEntMax =          273.15 + 35.00,
    capFunT =             {4.451516E-01,-1.252382E-02,-2.878042E-03,6.132233E-02,-2.365055E-03,4.514258E-03},
    EIRFunT =             {6.668391E-01,1.506485E-02,-4.249134E-03,3.588996E-02,-1.681591E-04,7.028459E-04},
    EIRFunPLR =           {2.157002E-01,2.251016E-01,5.584287E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller York YT 1867kW/10.09COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller York YT 1867kW/10.09COP/Vanes,  !- Name
    1867300,                 !- Reference Capacity {W}
    10.09,                   !- Reference COP {W/W}
    7.78,                    !- Reference Leaving Chilled Water Temperature {C}
    12.78,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.07571,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.09085,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller York YT 1867kW/10.09COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller York YT 1867kW/10.09COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller York YT 1867kW/10.09COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.09,                    !- Minimum Part Load Ratio
    1.04,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.09,                    !- Minimum Unloading Ratio
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
