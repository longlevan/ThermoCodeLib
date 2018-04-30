within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_Trane_RTWA_383kW_4_17COP_Valve =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -383300,
    COP_nominal =         4.17,
    PLRMin =              0.25,
    PLRMinUnl =           0.25,
    PLRMax =              1.01,
    mEva_flow_nominal =   1000 * 0.0165,
    mCon_flow_nominal =   1000 * 0.02063,
    TEvaLvg_nominal =     273.15 + 6.67,
    TConEnt_nominal =     273.15 + 29.44,
    TEvaLvgMin =          273.15 + 4.44,
    TEvaLvgMax =          273.15 + 8.89,
    TConEntMin =          273.15 + 23.89,
    TConEntMax =          273.15 + 35.00,
    capFunT =             {9.830684E-01,3.676199E-02,5.307995E-05,-4.828624E-03,-4.755963E-05,-2.377982E-04},
    EIRFunT =             {6.228513E-01,-8.700783E-03,9.719796E-04,5.184584E-03,4.951699E-04,-9.632370E-04},
    EIRFunPLR =           {3.295553E-02,9.114398E-01,5.565265E-02},
    etaMotor =            1.0)
  "ElectricEIRChiller Trane RTWA 383kW/4.17COP/Valve" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller Trane RTWA 383kW/4.17COP/Valve,  !- Name
    383300,                  !- Reference Capacity {W}
    4.17,                    !- Reference COP {W/W}
    6.67,                    !- Reference Leaving Chilled Water Temperature {C}
    29.44,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.0165,                  !- Reference Chilled Water Flow Rate {m3/s}
    0.02063,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller Trane RTWA 383kW/4.17COP/Valve CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller Trane RTWA 383kW/4.17COP/Valve EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller Trane RTWA 383kW/4.17COP/Valve EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.25,                    !- Minimum Part Load Ratio
    1.01,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.25,                    !- Minimum Unloading Ratio
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
