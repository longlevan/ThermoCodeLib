within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_Carrier_19XR_1656kW_8_24COP_VSD =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -1656300,
    COP_nominal =         8.24,
    PLRMin =              0.17,
    PLRMinUnl =           0.17,
    PLRMax =              1.04,
    mEva_flow_nominal =   1000 * 0.04322,
    mCon_flow_nominal =   1000 * 0.06296,
    TEvaLvg_nominal =     273.15 + 6.11,
    TConEnt_nominal =     273.15 + 12.78,
    TEvaLvgMin =          273.15 + 6.11,
    TEvaLvgMax =          273.15 + 12.78,
    TConEntMin =          273.15 + 12.78,
    TConEntMax =          273.15 + 23.89,
    capFunT =             {7.611706E-01,-2.867067E-02,-2.363358E-03,4.097113E-02,-2.343044E-03,4.547017E-03},
    EIRFunT =             {7.730916E-01,-8.073559E-02,-2.161313E-03,6.144398E-02,-1.953734E-03,4.056527E-03},
    EIRFunPLR =           {1.982584E-01,4.414042E-02,7.642946E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller Carrier 19XR 1656kW/8.24COP/VSD" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller Carrier 19XR 1656kW/8.24COP/VSD,  !- Name
    1656300,                 !- Reference Capacity {W}
    8.24,                    !- Reference COP {W/W}
    6.11,                    !- Reference Leaving Chilled Water Temperature {C}
    12.78,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.04322,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.06296,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller Carrier 19XR 1656kW/8.24COP/VSD CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller Carrier 19XR 1656kW/8.24COP/VSD EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller Carrier 19XR 1656kW/8.24COP/VSD EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.17,                    !- Minimum Part Load Ratio
    1.04,                    !- Maximum Part Load Ratio
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
