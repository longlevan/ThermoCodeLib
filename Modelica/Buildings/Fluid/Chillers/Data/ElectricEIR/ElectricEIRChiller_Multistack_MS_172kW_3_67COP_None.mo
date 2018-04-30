within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_Multistack_MS_172kW_3_67COP_None =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -172300,
    COP_nominal =         3.67,
    PLRMin =              0.40,
    PLRMinUnl =           0.40,
    PLRMax =              1.03,
    mEva_flow_nominal =   1000 * 0.00738,
    mCon_flow_nominal =   1000 * 0.00959,
    TEvaLvg_nominal =     273.15 + 4.44,
    TConEnt_nominal =     273.15 + 18.33,
    TEvaLvgMin =          273.15 + 4.44,
    TEvaLvgMax =          273.15 + 8.89,
    TConEntMin =          273.15 + 18.33,
    TConEntMax =          273.15 + 35.00,
    capFunT =             {9.839419E-01,1.094957E-01,-4.547595E-03,-2.311886E-02,2.595943E-04,-5.093307E-04},
    EIRFunT =             {9.396181E-01,-5.754225E-02,2.561677E-03,1.081450E-02,1.839935E-04,5.269319E-05},
    EIRFunPLR =           {4.747786E-03,1.072374E+00,-7.758317E-02},
    etaMotor =            1.0)
  "ElectricEIRChiller Multistack MS 172kW/3.67COP/None" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller Multistack MS 172kW/3.67COP/None,  !- Name
    172300,                  !- Reference Capacity {W}
    3.67,                    !- Reference COP {W/W}
    4.44,                    !- Reference Leaving Chilled Water Temperature {C}
    18.33,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.00738,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.00959,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller Multistack MS 172kW/3.67COP/None CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller Multistack MS 172kW/3.67COP/None EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller Multistack MS 172kW/3.67COP/None EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.40,                    !- Minimum Part Load Ratio
    1.03,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.40,                    !- Minimum Unloading Ratio
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
