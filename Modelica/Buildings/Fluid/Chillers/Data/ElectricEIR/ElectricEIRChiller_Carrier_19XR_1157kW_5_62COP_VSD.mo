within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_Carrier_19XR_1157kW_5_62COP_VSD =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -1156900,
    COP_nominal =         5.62,
    PLRMin =              0.19,
    PLRMinUnl =           0.19,
    PLRMax =              1.01,
    mEva_flow_nominal =   1000 * 0.02801,
    mCon_flow_nominal =   1000 * 0.03186,
    TEvaLvg_nominal =     273.15 + 5.56,
    TConEnt_nominal =     273.15 + 21.11,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 10.00,
    TConEntMin =          273.15 + 11.25,
    TConEntMax =          273.15 + 23.89,
    capFunT =             {1.076248E+00,5.436724E-03,-3.893302E-04,-4.353310E-03,-2.402031E-04,8.409080E-04},
    EIRFunT =             {1.075567E+00,-3.893571E-02,1.082499E-03,-5.782829E-03,6.574492E-04,-5.302886E-04},
    EIRFunPLR =           {1.608589E-01,-2.058215E-01,1.043133E+00},
    etaMotor =            1.0)
  "ElectricEIRChiller Carrier 19XR 1157kW/5.62COP/VSD" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller Carrier 19XR 1157kW/5.62COP/VSD,  !- Name
    1156900,                 !- Reference Capacity {W}
    5.62,                    !- Reference COP {W/W}
    5.56,                    !- Reference Leaving Chilled Water Temperature {C}
    21.11,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.02801,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.03186,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller Carrier 19XR 1157kW/5.62COP/VSD CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller Carrier 19XR 1157kW/5.62COP/VSD EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller Carrier 19XR 1157kW/5.62COP/VSD EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.19,                    !- Minimum Part Load Ratio
    1.01,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.19,                    !- Minimum Unloading Ratio
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
