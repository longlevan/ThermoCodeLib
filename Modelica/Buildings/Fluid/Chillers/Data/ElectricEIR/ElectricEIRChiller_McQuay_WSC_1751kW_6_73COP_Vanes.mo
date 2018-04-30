within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_McQuay_WSC_1751kW_6_73COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -1751300,
    COP_nominal =         6.73,
    PLRMin =              0.10,
    PLRMinUnl =           0.10,
    PLRMax =              1.06,
    mEva_flow_nominal =   1000 * 0.04145,
    mCon_flow_nominal =   1000 * 0.09337,
    TEvaLvg_nominal =     273.15 + 8.89,
    TConEnt_nominal =     273.15 + 26.67,
    TEvaLvgMin =          273.15 + 7.22,
    TEvaLvgMax =          273.15 + 12.78,
    TConEntMin =          273.15 + 12.78,
    TConEntMax =          273.15 + 26.67,
    capFunT =             {7.923045E-01,1.003672E-01,-4.348900E-03,3.755572E-03,-7.675491E-04,6.788600E-04},
    EIRFunT =             {8.089395E-01,2.628482E-02,-1.773497E-03,-8.118430E-03,7.146809E-04,-6.481705E-04},
    EIRFunPLR =           {2.250725E-01,2.648297E-01,5.095786E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller McQuay WSC 1751kW/6.73COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller McQuay WSC 1751kW/6.73COP/Vanes,  !- Name
    1751300,                 !- Reference Capacity {W}
    6.73,                    !- Reference COP {W/W}
    8.89,                    !- Reference Leaving Chilled Water Temperature {C}
    26.67,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.04145,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.09337,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller McQuay WSC 1751kW/6.73COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller McQuay WSC 1751kW/6.73COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller McQuay WSC 1751kW/6.73COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.10,                    !- Minimum Part Load Ratio
    1.06,                    !- Maximum Part Load Ratio
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
