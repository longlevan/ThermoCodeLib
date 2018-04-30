within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_Carrier_19XR_1234kW_5_39COP_VSD =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -1234300,
    COP_nominal =         5.39,
    PLRMin =              0.19,
    PLRMinUnl =           0.19,
    PLRMax =              1.02,
    mEva_flow_nominal =   1000 * 0.02593,
    mCon_flow_nominal =   1000 * 0.03861,
    TEvaLvg_nominal =     273.15 + 8.89,
    TConEnt_nominal =     273.15 + 26.67,
    TEvaLvgMin =          273.15 + 7.22,
    TEvaLvgMax =          273.15 + 12.78,
    TConEntMin =          273.15 + 12.78,
    TConEntMax =          273.15 + 26.67,
    capFunT =             {5.905815E-01,1.190927E-01,-6.727309E-03,-9.580836E-03,-3.034704E-04,1.540686E-03},
    EIRFunT =             {3.771659E-01,1.144965E-01,-8.186893E-03,-3.372584E-03,1.689440E-04,1.008523E-03},
    EIRFunPLR =           {1.495681E-01,-1.449639E-01,9.941070E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller Carrier 19XR 1234kW/5.39COP/VSD" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller Carrier 19XR 1234kW/5.39COP/VSD,  !- Name
    1234300,                 !- Reference Capacity {W}
    5.39,                    !- Reference COP {W/W}
    8.89,                    !- Reference Leaving Chilled Water Temperature {C}
    26.67,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.02593,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.03861,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller Carrier 19XR 1234kW/5.39COP/VSD CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller Carrier 19XR 1234kW/5.39COP/VSD EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller Carrier 19XR 1234kW/5.39COP/VSD EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.19,                    !- Minimum Part Load Ratio
    1.02,                    !- Maximum Part Load Ratio
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
