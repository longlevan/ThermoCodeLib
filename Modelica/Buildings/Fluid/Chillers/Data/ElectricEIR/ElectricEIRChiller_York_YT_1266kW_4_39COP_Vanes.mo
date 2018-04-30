within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_York_YT_1266kW_4_39COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -1266000,
    COP_nominal =         4.39,
    PLRMin =              0.11,
    PLRMinUnl =           0.11,
    PLRMax =              1.05,
    mEva_flow_nominal =   1000 * 0.03533,
    mCon_flow_nominal =   1000 * 0.05773,
    TEvaLvg_nominal =     273.15 + 5.56,
    TConEnt_nominal =     273.15 + 35.00,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 8.89,
    TConEntMin =          273.15 + 12.78,
    TConEntMax =          273.15 + 35.00,
    capFunT =             {1.285663E-01,-2.860032E-02,-1.369319E-03,6.676366E-02,-1.510647E-03,2.947167E-03},
    EIRFunT =             {8.284925E-02,4.206167E-02,-5.254555E-03,1.964407E-02,1.070646E-04,2.298241E-04},
    EIRFunPLR =           {7.326942E-01,-7.962527E-01,1.059148E+00},
    etaMotor =            1.0)
  "ElectricEIRChiller York YT 1266kW/4.39COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller York YT 1266kW/4.39COP/Vanes,  !- Name
    1266000,                 !- Reference Capacity {W}
    4.39,                    !- Reference COP {W/W}
    5.56,                    !- Reference Leaving Chilled Water Temperature {C}
    35.00,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.03533,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.05773,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller York YT 1266kW/4.39COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller York YT 1266kW/4.39COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller York YT 1266kW/4.39COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.11,                    !- Minimum Part Load Ratio
    1.05,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.11,                    !- Minimum Unloading Ratio
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
