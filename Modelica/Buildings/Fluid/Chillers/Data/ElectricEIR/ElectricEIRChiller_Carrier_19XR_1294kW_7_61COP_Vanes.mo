within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_Carrier_19XR_1294kW_7_61COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -1294100,
    COP_nominal =         7.61,
    PLRMin =              0.16,
    PLRMinUnl =           0.16,
    PLRMax =              1.02,
    mEva_flow_nominal =   1000 * 0.03243,
    mCon_flow_nominal =   1000 * 0.04732,
    TEvaLvg_nominal =     273.15 + 6.11,
    TConEnt_nominal =     273.15 + 12.78,
    TEvaLvgMin =          273.15 + 6.11,
    TEvaLvgMax =          273.15 + 12.78,
    TConEntMin =          273.15 + 12.78,
    TConEntMax =          273.15 + 23.89,
    capFunT =             {9.274222E-01,1.278683E-02,-1.621880E-03,2.816339E-03,-7.658105E-04,1.881968E-03},
    EIRFunT =             {1.085249E+00,-9.441252E-04,-2.505100E-03,-8.724367E-03,4.164780E-04,8.473746E-04},
    EIRFunPLR =           {9.344563E-02,3.993002E-01,5.087169E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller Carrier 19XR 1294kW/7.61COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller Carrier 19XR 1294kW/7.61COP/Vanes,  !- Name
    1294100,                 !- Reference Capacity {W}
    7.61,                    !- Reference COP {W/W}
    6.11,                    !- Reference Leaving Chilled Water Temperature {C}
    12.78,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.03243,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.04732,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller Carrier 19XR 1294kW/7.61COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller Carrier 19XR 1294kW/7.61COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller Carrier 19XR 1294kW/7.61COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.16,                    !- Minimum Part Load Ratio
    1.02,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.16,                    !- Minimum Unloading Ratio
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
