within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_Trane_CVHF_2567kW_11_77COP_VSD =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -2567100,
    COP_nominal =         11.77,
    PLRMin =              0.11,
    PLRMinUnl =           0.11,
    PLRMax =              1.04,
    mEva_flow_nominal =   1000 * 0.12113,
    mCon_flow_nominal =   1000 * 0.15142,
    TEvaLvg_nominal =     273.15 + 4.44,
    TConEnt_nominal =     273.15 + 12.78,
    TEvaLvgMin =          273.15 + 4.44,
    TEvaLvgMax =          273.15 + 8.89,
    TConEntMin =          273.15 + 12.78,
    TConEntMax =          273.15 + 29.44,
    capFunT =             {4.549428E-01,2.748161E-02,-4.298342E-03,4.363928E-02,-1.352509E-03,2.964225E-03},
    EIRFunT =             {4.561990E-01,-3.333063E-02,-1.763576E-03,5.624520E-02,-8.535085E-05,3.567604E-04},
    EIRFunPLR =           {1.039419E-01,4.184975E-01,4.774210E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller Trane CVHF 2567kW/11.77COP/VSD" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller Trane CVHF 2567kW/11.77COP/VSD,  !- Name
    2567100,                 !- Reference Capacity {W}
    11.77,                   !- Reference COP {W/W}
    4.44,                    !- Reference Leaving Chilled Water Temperature {C}
    12.78,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.12113,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.15142,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller Trane CVHF 2567kW/11.77COP/VSD CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller Trane CVHF 2567kW/11.77COP/VSD EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller Trane CVHF 2567kW/11.77COP/VSD EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.11,                    !- Minimum Part Load Ratio
    1.04,                    !- Maximum Part Load Ratio
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
