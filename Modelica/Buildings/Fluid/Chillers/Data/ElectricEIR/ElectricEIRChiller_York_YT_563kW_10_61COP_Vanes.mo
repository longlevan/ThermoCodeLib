within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_York_YT_563kW_10_61COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -562600,
    COP_nominal =         10.61,
    PLRMin =              0.09,
    PLRMinUnl =           0.09,
    PLRMax =              1.03,
    mEva_flow_nominal =   1000 * 0.01514,
    mCon_flow_nominal =   1000 * 0.0241,
    TEvaLvg_nominal =     273.15 + 6.11,
    TConEnt_nominal =     273.15 + 12.78,
    TEvaLvgMin =          273.15 + 6.11,
    TEvaLvgMax =          273.15 + 12.78,
    TConEntMin =          273.15 + 12.78,
    TConEntMax =          273.15 + 23.89,
    capFunT =             {-1.288612E-01,-8.919540E-02,-2.190195E-03,1.538357E-01,-5.129402E-03,7.813636E-03},
    EIRFunT =             {-5.781003E-01,-1.169130E-01,-4.760535E-03,2.230082E-01,-5.313649E-03,6.846644E-03},
    EIRFunPLR =           {5.203969E-01,-7.775900E-01,1.255394E+00},
    etaMotor =            1.0)
  "ElectricEIRChiller York YT 563kW/10.61COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller York YT 563kW/10.61COP/Vanes,  !- Name
    562600,                  !- Reference Capacity {W}
    10.61,                   !- Reference COP {W/W}
    6.11,                    !- Reference Leaving Chilled Water Temperature {C}
    12.78,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.01514,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.0241,                  !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller York YT 563kW/10.61COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller York YT 563kW/10.61COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller York YT 563kW/10.61COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.09,                    !- Minimum Part Load Ratio
    1.03,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.09,                    !- Minimum Unloading Ratio
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
