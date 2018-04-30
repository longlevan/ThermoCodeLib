within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_Carrier_19XR_2391kW_6_77COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -2391300,
    COP_nominal =         6.77,
    PLRMin =              0.20,
    PLRMinUnl =           0.20,
    PLRMax =              1.02,
    mEva_flow_nominal =   1000 * 0.06858,
    mCon_flow_nominal =   1000 * 0.0846,
    TEvaLvg_nominal =     273.15 + 7.22,
    TConEnt_nominal =     273.15 + 23.89,
    TEvaLvgMin =          273.15 + 6.67,
    TEvaLvgMax =          273.15 + 12.22,
    TConEntMin =          273.15 + 12.78,
    TConEntMax =          273.15 + 23.89,
    capFunT =             {3.676388E-01,-5.087680E-02,-1.772675E-03,9.518123E-02,-3.403878E-03,4.526983E-03},
    EIRFunT =             {6.266646E-01,-2.367443E-02,4.031296E-04,2.827714E-02,-1.985242E-04,-1.470260E-04},
    EIRFunPLR =           {3.036386E-01,2.524850E-01,4.429285E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller Carrier 19XR 2391kW/6.77COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller Carrier 19XR 2391kW/6.77COP/Vanes,  !- Name
    2391300,                 !- Reference Capacity {W}
    6.77,                    !- Reference COP {W/W}
    7.22,                    !- Reference Leaving Chilled Water Temperature {C}
    23.89,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.06858,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.0846,                  !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller Carrier 19XR 2391kW/6.77COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller Carrier 19XR 2391kW/6.77COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller Carrier 19XR 2391kW/6.77COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.20,                    !- Minimum Part Load Ratio
    1.02,                    !- Maximum Part Load Ratio
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
