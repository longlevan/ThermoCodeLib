within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_Trane_CVHE_1407kW_7_14COP_VSD =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -1406600,
    COP_nominal =         7.14,
    PLRMin =              0.30,
    PLRMinUnl =           0.30,
    PLRMax =              1.06,
    mEva_flow_nominal =   1000 * 0.05047,
    mCon_flow_nominal =   1000 * 0.07571,
    TEvaLvg_nominal =     273.15 + 5.56,
    TConEnt_nominal =     273.15 + 23.89,
    TEvaLvgMin =          273.15 + 4.44,
    TEvaLvgMax =          273.15 + 8.89,
    TConEntMin =          273.15 + 12.78,
    TConEntMax =          273.15 + 29.44,
    capFunT =             {4.521342E-01,5.248142E-03,-6.687636E-03,5.869437E-02,-2.390647E-03,5.040171E-03},
    EIRFunT =             {5.674858E-01,4.461513E-02,-6.341978E-03,4.674972E-03,4.387295E-04,2.778096E-04},
    EIRFunPLR =           {5.963988E-02,3.503067E-01,5.870000E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller Trane CVHE 1407kW/7.14COP/VSD" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller Trane CVHE 1407kW/7.14COP/VSD,  !- Name
    1406600,                 !- Reference Capacity {W}
    7.14,                    !- Reference COP {W/W}
    5.56,                    !- Reference Leaving Chilled Water Temperature {C}
    23.89,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.05047,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.07571,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller Trane CVHE 1407kW/7.14COP/VSD CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller Trane CVHE 1407kW/7.14COP/VSD EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller Trane CVHE 1407kW/7.14COP/VSD EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.30,                    !- Minimum Part Load Ratio
    1.06,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.30,                    !- Minimum Unloading Ratio
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
