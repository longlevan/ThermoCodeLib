within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_York_YT_2233kW_9_54COP_VSD =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -2233000,
    COP_nominal =         9.54,
    PLRMin =              0.10,
    PLRMinUnl =           0.10,
    PLRMax =              1.04,
    mEva_flow_nominal =   1000 * 0.06107,
    mCon_flow_nominal =   1000 * 0.11451,
    TEvaLvg_nominal =     273.15 + 5.56,
    TConEnt_nominal =     273.15 + 12.78,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 8.89,
    TConEntMin =          273.15 + 12.78,
    TConEntMax =          273.15 + 29.44,
    capFunT =             {7.585741E-01,-5.127829E-02,5.848602E-03,4.235544E-02,-1.606561E-03,9.364594E-04},
    EIRFunT =             {7.563409E-01,-1.966623E-02,-3.927494E-04,2.973607E-02,1.299230E-04,-4.325357E-04},
    EIRFunPLR =           {6.917141E-02,1.743339E-01,7.524059E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller York YT 2233kW/9.54COP/VSD" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller York YT 2233kW/9.54COP/VSD,  !- Name
    2233000,                 !- Reference Capacity {W}
    9.54,                    !- Reference COP {W/W}
    5.56,                    !- Reference Leaving Chilled Water Temperature {C}
    12.78,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.06107,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.11451,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller York YT 2233kW/9.54COP/VSD CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller York YT 2233kW/9.54COP/VSD EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller York YT 2233kW/9.54COP/VSD EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.10,                    !- Minimum Part Load Ratio
    1.04,                    !- Maximum Part Load Ratio
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
