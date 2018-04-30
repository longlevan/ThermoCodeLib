within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_York_YK_1997kW_7_24COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -1997400,
    COP_nominal =         7.24,
    PLRMin =              0.18,
    PLRMinUnl =           0.18,
    PLRMax =              1.06,
    mEva_flow_nominal =   1000 * 0.04397,
    mCon_flow_nominal =   1000 * 0.1041,
    TEvaLvg_nominal =     273.15 + 8.89,
    TConEnt_nominal =     273.15 + 26.67,
    TEvaLvgMin =          273.15 + 7.22,
    TEvaLvgMax =          273.15 + 12.78,
    TConEntMin =          273.15 + 12.78,
    TConEntMax =          273.15 + 26.67,
    capFunT =             {9.058272E-01,1.309175E-01,-3.446620E-03,-3.166792E-02,2.325200E-04,-4.892256E-04},
    EIRFunT =             {1.188194E-01,8.769791E-02,-1.692086E-03,2.209962E-03,1.327958E-03,-3.249833E-03},
    EIRFunPLR =           {9.359332E-02,5.873752E-01,3.208990E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller York YK 1997kW/7.24COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller York YK 1997kW/7.24COP/Vanes,  !- Name
    1997400,                 !- Reference Capacity {W}
    7.24,                    !- Reference COP {W/W}
    8.89,                    !- Reference Leaving Chilled Water Temperature {C}
    26.67,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.04397,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.1041,                  !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller York YK 1997kW/7.24COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller York YK 1997kW/7.24COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller York YK 1997kW/7.24COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.18,                    !- Minimum Part Load Ratio
    1.06,                    !- Maximum Part Load Ratio
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
