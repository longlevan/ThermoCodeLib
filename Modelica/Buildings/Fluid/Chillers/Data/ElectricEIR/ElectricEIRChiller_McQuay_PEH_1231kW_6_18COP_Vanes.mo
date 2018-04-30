within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_McQuay_PEH_1231kW_6_18COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -1230800,
    COP_nominal =         6.18,
    PLRMin =              0.10,
    PLRMinUnl =           0.10,
    PLRMax =              1.02,
    mEva_flow_nominal =   1000 * 0.03533,
    mCon_flow_nominal =   1000 * 0.0511,
    TEvaLvg_nominal =     273.15 + 5.56,
    TConEnt_nominal =     273.15 + 22.78,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 8.89,
    TConEntMin =          273.15 + 12.78,
    TConEntMax =          273.15 + 23.89,
    capFunT =             {1.152795E+00,9.770474E-02,-6.719705E-03,-2.123401E-02,-3.641998E-04,1.473439E-03},
    EIRFunT =             {8.067591E-01,1.868314E-02,-5.569088E-03,-4.309148E-03,1.373034E-04,2.394081E-03},
    EIRFunPLR =           {2.117054E-01,4.263662E-01,3.614654E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller McQuay PEH 1231kW/6.18COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller McQuay PEH 1231kW/6.18COP/Vanes,  !- Name
    1230800,                 !- Reference Capacity {W}
    6.18,                    !- Reference COP {W/W}
    5.56,                    !- Reference Leaving Chilled Water Temperature {C}
    22.78,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.03533,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.0511,                  !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller McQuay PEH 1231kW/6.18COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller McQuay PEH 1231kW/6.18COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller McQuay PEH 1231kW/6.18COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
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
