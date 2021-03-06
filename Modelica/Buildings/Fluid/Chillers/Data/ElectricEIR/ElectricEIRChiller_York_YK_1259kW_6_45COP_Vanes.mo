within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_York_YK_1259kW_6_45COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -1258900,
    COP_nominal =         6.45,
    PLRMin =              0.18,
    PLRMinUnl =           0.18,
    PLRMax =              1.02,
    mEva_flow_nominal =   1000 * 0.02631,
    mCon_flow_nominal =   1000 * 0.06246,
    TEvaLvg_nominal =     273.15 + 8.89,
    TConEnt_nominal =     273.15 + 26.67,
    TEvaLvgMin =          273.15 + 7.22,
    TEvaLvgMax =          273.15 + 12.78,
    TConEntMin =          273.15 + 12.78,
    TConEntMax =          273.15 + 26.67,
    capFunT =             {9.609200E-01,7.223733E-02,-1.693471E-03,2.543722E-03,-6.415570E-04,-3.028540E-04},
    EIRFunT =             {8.991536E-01,6.305932E-03,-3.756374E-04,-1.952076E-02,1.381302E-03,-1.615004E-03},
    EIRFunPLR =           {1.014593E-01,6.216537E-01,2.780213E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller York YK 1259kW/6.45COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller York YK 1259kW/6.45COP/Vanes,  !- Name
    1258900,                 !- Reference Capacity {W}
    6.45,                    !- Reference COP {W/W}
    8.89,                    !- Reference Leaving Chilled Water Temperature {C}
    26.67,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.02631,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.06246,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller York YK 1259kW/6.45COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller York YK 1259kW/6.45COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller York YK 1259kW/6.45COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.18,                    !- Minimum Part Load Ratio
    1.02,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.18,                    !- Minimum Unloading Ratio
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
