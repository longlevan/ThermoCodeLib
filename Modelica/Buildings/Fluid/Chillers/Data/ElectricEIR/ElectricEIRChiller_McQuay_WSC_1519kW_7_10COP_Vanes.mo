within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_McQuay_WSC_1519kW_7_10COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -1519200,
    COP_nominal =         7.10,
    PLRMin =              0.10,
    PLRMinUnl =           0.10,
    PLRMax =              1.03,
    mEva_flow_nominal =   1000 * 0.03186,
    mCon_flow_nominal =   1000 * 0.08139,
    TEvaLvg_nominal =     273.15 + 8.89,
    TConEnt_nominal =     273.15 + 26.67,
    TEvaLvgMin =          273.15 + 7.22,
    TEvaLvgMax =          273.15 + 12.78,
    TConEntMin =          273.15 + 12.78,
    TConEntMax =          273.15 + 26.67,
    capFunT =             {1.265889E+00,3.401563E-02,-6.532621E-03,-6.600960E-03,-2.172017E-03,7.121766E-03},
    EIRFunT =             {9.981236E-01,-1.060763E-02,-3.921458E-03,-1.206761E-02,-1.398595E-04,3.467199E-03},
    EIRFunPLR =           {1.563837E-01,4.894381E-01,3.541551E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller McQuay WSC 1519kW/7.10COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller McQuay WSC 1519kW/7.10COP/Vanes,  !- Name
    1519200,                 !- Reference Capacity {W}
    7.10,                    !- Reference COP {W/W}
    8.89,                    !- Reference Leaving Chilled Water Temperature {C}
    26.67,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.03186,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.08139,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller McQuay WSC 1519kW/7.10COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller McQuay WSC 1519kW/7.10COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller McQuay WSC 1519kW/7.10COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.10,                    !- Minimum Part Load Ratio
    1.03,                    !- Maximum Part Load Ratio
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
