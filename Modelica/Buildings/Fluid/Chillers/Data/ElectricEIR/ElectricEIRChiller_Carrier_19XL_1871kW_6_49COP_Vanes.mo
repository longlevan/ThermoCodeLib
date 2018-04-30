within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_Carrier_19XL_1871kW_6_49COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -1870800,
    COP_nominal =         6.49,
    PLRMin =              0.19,
    PLRMinUnl =           0.19,
    PLRMax =              1.02,
    mEva_flow_nominal =   1000 * 0.06303,
    mCon_flow_nominal =   1000 * 0.0877,
    TEvaLvg_nominal =     273.15 + 6.67,
    TConEnt_nominal =     273.15 + 26.11,
    TEvaLvgMin =          273.15 + 4.44,
    TEvaLvgMax =          273.15 + 8.89,
    TConEntMin =          273.15 + 15.56,
    TConEntMax =          273.15 + 29.44,
    capFunT =             {5.658630E-03,-3.836575E-02,-5.122195E-03,1.068063E-01,-3.377824E-03,5.650118E-03},
    EIRFunT =             {1.029608E+00,-7.149045E-02,2.043279E-03,-6.116474E-04,3.908334E-04,6.870233E-04},
    EIRFunPLR =           {2.984908E-01,2.906868E-01,4.089411E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller Carrier 19XL 1871kW/6.49COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller Carrier 19XL 1871kW/6.49COP/Vanes,  !- Name
    1870800,                 !- Reference Capacity {W}
    6.49,                    !- Reference COP {W/W}
    6.67,                    !- Reference Leaving Chilled Water Temperature {C}
    26.11,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.06303,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.0877,                  !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller Carrier 19XL 1871kW/6.49COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller Carrier 19XL 1871kW/6.49COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller Carrier 19XL 1871kW/6.49COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.19,                    !- Minimum Part Load Ratio
    1.02,                    !- Maximum Part Load Ratio
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
