within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_Trane_RTHC_1009kW_5_37COP_Valve =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -1009200,
    COP_nominal =         5.37,
    PLRMin =              0.30,
    PLRMinUnl =           0.30,
    PLRMax =              1.01,
    mEva_flow_nominal =   1000 * 0.03186,
    mCon_flow_nominal =   1000 * 0.04618,
    TEvaLvg_nominal =     273.15 + 5.56,
    TConEnt_nominal =     273.15 + 24.86,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 10.00,
    TConEntMin =          273.15 + 19.97,
    TConEntMax =          273.15 + 24.86,
    capFunT =             {1.134633E+00,3.267210E-02,5.266344E-04,-1.076173E-02,-4.853769E-05,-2.569325E-04},
    EIRFunT =             {4.383883E-01,7.754235E-03,6.353809E-04,-2.951880E-03,1.270756E-03,-1.541831E-03},
    EIRFunPLR =           {1.316727E-01,1.013111E+00,-1.413213E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller Trane RTHC 1009kW/5.37COP/Valve" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller Trane RTHC 1009kW/5.37COP/Valve,  !- Name
    1009200,                 !- Reference Capacity {W}
    5.37,                    !- Reference COP {W/W}
    5.56,                    !- Reference Leaving Chilled Water Temperature {C}
    24.86,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.03186,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.04618,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller Trane RTHC 1009kW/5.37COP/Valve CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller Trane RTHC 1009kW/5.37COP/Valve EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller Trane RTHC 1009kW/5.37COP/Valve EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.30,                    !- Minimum Part Load Ratio
    1.01,                    !- Maximum Part Load Ratio
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
