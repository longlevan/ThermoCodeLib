within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_Carrier_23XL_1196kW_6_39COP_Valve =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -1195600,
    COP_nominal =         6.39,
    PLRMin =              0.20,
    PLRMinUnl =           0.20,
    PLRMax =              1.03,
    mEva_flow_nominal =   1000 * 0.03653,
    mCon_flow_nominal =   1000 * 0.04271,
    TEvaLvg_nominal =     273.15 + 7.22,
    TConEnt_nominal =     273.15 + 23.89,
    TEvaLvgMin =          273.15 + 6.67,
    TEvaLvgMax =          273.15 + 12.22,
    TConEntMin =          273.15 + 12.78,
    TConEntMax =          273.15 + 23.89,
    capFunT =             {5.775948E-01,2.206074E-02,-3.342365E-03,3.970188E-02,-1.669877E-03,2.762827E-03},
    EIRFunT =             {5.077824E-01,-1.608447E-02,1.742121E-04,2.093857E-02,4.160938E-04,-7.169668E-04},
    EIRFunPLR =           {1.061065E-01,7.305514E-01,1.632883E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller Carrier 23XL 1196kW/6.39COP/Valve" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller Carrier 23XL 1196kW/6.39COP/Valve,  !- Name
    1195600,                 !- Reference Capacity {W}
    6.39,                    !- Reference COP {W/W}
    7.22,                    !- Reference Leaving Chilled Water Temperature {C}
    23.89,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.03653,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.04271,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller Carrier 23XL 1196kW/6.39COP/Valve CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller Carrier 23XL 1196kW/6.39COP/Valve EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller Carrier 23XL 1196kW/6.39COP/Valve EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.20,                    !- Minimum Part Load Ratio
    1.03,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.20,                    !- Minimum Unloading Ratio
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
