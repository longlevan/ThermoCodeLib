within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_Carrier_19XR_1143kW_6_57COP_VSD =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -1142900,
    COP_nominal =         6.57,
    PLRMin =              0.20,
    PLRMinUnl =           0.20,
    PLRMax =              1.03,
    mEva_flow_nominal =   1000 * 0.02593,
    mCon_flow_nominal =   1000 * 0.05142,
    TEvaLvg_nominal =     273.15 + 10.00,
    TConEnt_nominal =     273.15 + 26.67,
    TEvaLvgMin =          273.15 + 7.22,
    TEvaLvgMax =          273.15 + 12.78,
    TConEntMin =          273.15 + 12.78,
    TConEntMax =          273.15 + 26.67,
    capFunT =             {7.939538E-01,4.096493E-02,-1.419397E-03,-1.639813E-03,-5.220497E-04,1.348786E-03},
    EIRFunT =             {9.475580E-01,-1.187942E-02,8.799326E-05,2.250775E-04,1.815775E-04,2.178409E-04},
    EIRFunPLR =           {1.408822E-01,-1.578153E-01,1.014316E+00},
    etaMotor =            1.0)
  "ElectricEIRChiller Carrier 19XR 1143kW/6.57COP/VSD" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller Carrier 19XR 1143kW/6.57COP/VSD,  !- Name
    1142900,                 !- Reference Capacity {W}
    6.57,                    !- Reference COP {W/W}
    10.00,                   !- Reference Leaving Chilled Water Temperature {C}
    26.67,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.02593,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.05142,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller Carrier 19XR 1143kW/6.57COP/VSD CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller Carrier 19XR 1143kW/6.57COP/VSD EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller Carrier 19XR 1143kW/6.57COP/VSD EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
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
