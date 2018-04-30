within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_McQuay_PFH_932kW_5_09COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -931900,
    COP_nominal =         5.09,
    PLRMin =              0.09,
    PLRMinUnl =           0.09,
    PLRMax =              1.02,
    mEva_flow_nominal =   1000 * 0.03785,
    mCon_flow_nominal =   1000 * 0.04732,
    TEvaLvg_nominal =     273.15 + 4.44,
    TConEnt_nominal =     273.15 + 26.11,
    TEvaLvgMin =          273.15 + 3.33,
    TEvaLvgMax =          273.15 + 7.78,
    TConEntMin =          273.15 + 12.78,
    TConEntMax =          273.15 + 29.44,
    capFunT =             {1.182278E+00,3.259490E-02,-3.904288E-03,4.579721E-03,-1.028178E-03,2.855063E-03},
    EIRFunT =             {6.053491E-01,-1.089778E-02,-1.511327E-03,1.902687E-02,-1.910750E-04,9.008184E-04},
    EIRFunPLR =           {6.823245E-02,6.672421E-01,2.654211E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller McQuay PFH 932kW/5.09COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller McQuay PFH 932kW/5.09COP/Vanes,  !- Name
    931900,                  !- Reference Capacity {W}
    5.09,                    !- Reference COP {W/W}
    4.44,                    !- Reference Leaving Chilled Water Temperature {C}
    26.11,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.03785,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.04732,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller McQuay PFH 932kW/5.09COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller McQuay PFH 932kW/5.09COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller McQuay PFH 932kW/5.09COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.09,                    !- Minimum Part Load Ratio
    1.02,                    !- Maximum Part Load Ratio
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
