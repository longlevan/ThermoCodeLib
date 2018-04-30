within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_York_YT_1794kW_8_11COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -1793500,
    COP_nominal =         8.11,
    PLRMin =              0.10,
    PLRMinUnl =           0.10,
    PLRMax =              1.08,
    mEva_flow_nominal =   1000 * 0.05148,
    mCon_flow_nominal =   1000 * 0.09653,
    TEvaLvg_nominal =     273.15 + 7.22,
    TConEnt_nominal =     273.15 + 23.89,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 8.89,
    TConEntMin =          273.15 + 12.78,
    TConEntMax =          273.15 + 29.44,
    capFunT =             {1.536140E+00,-1.630760E-01,1.225832E-02,2.148166E-02,-1.654700E-03,2.660568E-03},
    EIRFunT =             {8.546274E-01,2.456473E-01,-9.770595E-03,-7.386557E-02,2.843499E-03,-5.292981E-03},
    EIRFunPLR =           {3.187543E-02,8.272483E-01,1.279099E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller York YT 1794kW/8.11COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller York YT 1794kW/8.11COP/Vanes,  !- Name
    1793500,                 !- Reference Capacity {W}
    8.11,                    !- Reference COP {W/W}
    7.22,                    !- Reference Leaving Chilled Water Temperature {C}
    23.89,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.05148,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.09653,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller York YT 1794kW/8.11COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller York YT 1794kW/8.11COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller York YT 1794kW/8.11COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
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
