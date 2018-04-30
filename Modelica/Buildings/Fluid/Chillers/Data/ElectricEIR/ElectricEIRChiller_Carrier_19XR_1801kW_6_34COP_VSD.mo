within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_Carrier_19XR_1801kW_6_34COP_VSD =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -1800500,
    COP_nominal =         6.34,
    PLRMin =              0.20,
    PLRMinUnl =           0.20,
    PLRMax =              1.03,
    mEva_flow_nominal =   1000 * 0.05161,
    mCon_flow_nominal =   1000 * 0.06385,
    TEvaLvg_nominal =     273.15 + 7.22,
    TConEnt_nominal =     273.15 + 23.89,
    TEvaLvgMin =          273.15 + 6.67,
    TEvaLvgMax =          273.15 + 12.22,
    TConEntMin =          273.15 + 12.78,
    TConEntMax =          273.15 + 23.89,
    capFunT =             {6.174861E-01,-7.299051E-02,-1.897105E-03,7.003662E-02,-2.852439E-03,5.751931E-03},
    EIRFunT =             {6.931082E-01,-1.885558E-02,8.345461E-04,1.263879E-02,4.588028E-04,-8.221467E-04},
    EIRFunPLR =           {1.040764E-01,2.818752E-01,6.144036E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller Carrier 19XR 1801kW/6.34COP/VSD" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller Carrier 19XR 1801kW/6.34COP/VSD,  !- Name
    1800500,                 !- Reference Capacity {W}
    6.34,                    !- Reference COP {W/W}
    7.22,                    !- Reference Leaving Chilled Water Temperature {C}
    23.89,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.05161,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.06385,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller Carrier 19XR 1801kW/6.34COP/VSD CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller Carrier 19XR 1801kW/6.34COP/VSD EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller Carrier 19XR 1801kW/6.34COP/VSD EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.20,                    !- Minimum Part Load Ratio
    1.03,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.20,                    !- Minimum Unloading Ratio
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
