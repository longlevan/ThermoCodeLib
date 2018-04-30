within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_York_YT_897kW_6_27COP_VSD =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -896700,
    COP_nominal =         6.27,
    PLRMin =              0.10,
    PLRMinUnl =           0.10,
    PLRMax =              1.02,
    mEva_flow_nominal =   1000 * 0.06782,
    mCon_flow_nominal =   1000 * 0.05142,
    TEvaLvg_nominal =     273.15 + 6.67,
    TConEnt_nominal =     273.15 + 22.78,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 10.00,
    TConEntMin =          273.15 + 12.78,
    TConEntMax =          273.15 + 23.89,
    capFunT =             {1.197991E-01,1.568955E-01,-4.426242E-03,3.449640E-02,-8.163597E-04,-2.236230E-03},
    EIRFunT =             {5.530767E-01,-5.683068E-02,4.423475E-03,6.472411E-02,-7.378933E-04,-2.491202E-03},
    EIRFunPLR =           {9.836320E-02,-1.638320E-02,9.127289E-01},
    etaMotor =            1.0) "ElectricEIRChiller York YT 897kW/6.27COP/VSD"
  annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller York YT 897kW/6.27COP/VSD,  !- Name
    896700,                  !- Reference Capacity {W}
    6.27,                    !- Reference COP {W/W}
    6.67,                    !- Reference Leaving Chilled Water Temperature {C}
    22.78,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.06782,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.05142,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller York YT 897kW/6.27COP/VSD CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller York YT 897kW/6.27COP/VSD EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller York YT 897kW/6.27COP/VSD EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.10,                    !- Minimum Part Load Ratio
    1.02,                    !- Maximum Part Load Ratio
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
