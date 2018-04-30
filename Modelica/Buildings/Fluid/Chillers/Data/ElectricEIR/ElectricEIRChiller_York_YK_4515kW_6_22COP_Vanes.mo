within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_York_YK_4515kW_6_22COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -4515400,
    COP_nominal =         6.22,
    PLRMin =              0.40,
    PLRMinUnl =           0.40,
    PLRMax =              1.03,
    mEva_flow_nominal =   1000 * 0.19558,
    mCon_flow_nominal =   1000 * 0.24605,
    TEvaLvg_nominal =     273.15 + 6.67,
    TConEnt_nominal =     273.15 + 26.67,
    TEvaLvgMin =          273.15 + 4.44,
    TEvaLvgMax =          273.15 + 7.78,
    TConEntMin =          273.15 + 12.78,
    TConEntMax =          273.15 + 26.67,
    capFunT =             {3.732405E-01,-7.176618E-03,-2.588788E-03,5.381225E-02,-1.773937E-03,3.509721E-03},
    EIRFunT =             {5.908290E-01,1.028668E-02,-4.718838E-04,1.220347E-02,4.166971E-04,-1.484327E-03},
    EIRFunPLR =           {2.870815E-01,3.951784E-01,3.177735E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller York YK 4515kW/6.22COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller York YK 4515kW/6.22COP/Vanes,  !- Name
    4515400,                 !- Reference Capacity {W}
    6.22,                    !- Reference COP {W/W}
    6.67,                    !- Reference Leaving Chilled Water Temperature {C}
    26.67,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.19558,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.24605,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller York YK 4515kW/6.22COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller York YK 4515kW/6.22COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller York YK 4515kW/6.22COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
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
