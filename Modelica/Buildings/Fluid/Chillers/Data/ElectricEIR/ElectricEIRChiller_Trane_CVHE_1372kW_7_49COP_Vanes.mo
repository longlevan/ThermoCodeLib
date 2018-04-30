within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_Trane_CVHE_1372kW_7_49COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -1371500,
    COP_nominal =         7.49,
    PLRMin =              0.41,
    PLRMinUnl =           0.41,
    PLRMax =              1.07,
    mEva_flow_nominal =   1000 * 0.05047,
    mCon_flow_nominal =   1000 * 0.07571,
    TEvaLvg_nominal =     273.15 + 5.56,
    TConEnt_nominal =     273.15 + 23.89,
    TEvaLvgMin =          273.15 + 4.44,
    TEvaLvgMax =          273.15 + 8.89,
    TConEntMin =          273.15 + 12.78,
    TConEntMax =          273.15 + 29.44,
    capFunT =             {5.993784E-01,6.523380E-02,-7.714286E-03,3.114955E-02,-1.843989E-03,4.096552E-03},
    EIRFunT =             {9.123765E-01,1.616509E-02,1.906349E-03,-1.143164E-02,1.080775E-03,-2.873661E-03},
    EIRFunPLR =           {5.154478E-02,9.635713E-01,-1.896824E-02},
    etaMotor =            1.0)
  "ElectricEIRChiller Trane CVHE 1372kW/7.49COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller Trane CVHE 1372kW/7.49COP/Vanes,  !- Name
    1371500,                 !- Reference Capacity {W}
    7.49,                    !- Reference COP {W/W}
    5.56,                    !- Reference Leaving Chilled Water Temperature {C}
    23.89,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.05047,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.07571,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller Trane CVHE 1372kW/7.49COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller Trane CVHE 1372kW/7.49COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller Trane CVHE 1372kW/7.49COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.41,                    !- Minimum Part Load Ratio
    1.07,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.41,                    !- Minimum Unloading Ratio
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
