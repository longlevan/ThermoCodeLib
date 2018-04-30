within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_Trane_CGWD_207kW_3_99COP_None =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -207400,
    COP_nominal =         3.99,
    PLRMin =              0.25,
    PLRMinUnl =           0.25,
    PLRMax =              1.01,
    mEva_flow_nominal =   1000 * 0.00898,
    mCon_flow_nominal =   1000 * 0.01122,
    TEvaLvg_nominal =     273.15 + 6.67,
    TConEnt_nominal =     273.15 + 29.44,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 10.00,
    TConEntMin =          273.15 + 23.89,
    TConEntMax =          273.15 + 35.00,
    capFunT =             {9.441897E-01,3.371079E-02,9.756685E-05,-3.220573E-03,-4.917369E-05,-1.775717E-04},
    EIRFunT =             {7.273870E-01,-1.189276E-02,5.411677E-04,1.879294E-03,4.734664E-04,-7.114850E-04},
    EIRFunPLR =           {4.146742E-02,6.543795E-01,3.044125E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller Trane CGWD 207kW/3.99COP/None" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller Trane CGWD 207kW/3.99COP/None,  !- Name
    207400,                  !- Reference Capacity {W}
    3.99,                    !- Reference COP {W/W}
    6.67,                    !- Reference Leaving Chilled Water Temperature {C}
    29.44,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.00898,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.01122,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller Trane CGWD 207kW/3.99COP/None CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller Trane CGWD 207kW/3.99COP/None EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller Trane CGWD 207kW/3.99COP/None EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
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
