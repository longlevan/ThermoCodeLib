within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_Carrier_23XL_1062kW_5_50COP_Valve =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -1062000,
    COP_nominal =         5.50,
    PLRMin =              0.20,
    PLRMinUnl =           0.20,
    PLRMax =              1.01,
    mEva_flow_nominal =   1000 * 0.04573,
    mCon_flow_nominal =   1000 * 0.05716,
    TEvaLvg_nominal =     273.15 + 6.67,
    TConEnt_nominal =     273.15 + 29.44,
    TEvaLvgMin =          273.15 + 6.67,
    TEvaLvgMax =          273.15 + 10.00,
    TConEntMin =          273.15 + 21.11,
    TConEntMax =          273.15 + 29.44,
    capFunT =             {1.025695E+00,2.327484E-02,-4.693708E-03,-7.092715E-03,-3.754967E-04,2.843046E-03},
    EIRFunT =             {2.634070E-01,-7.025220E-03,-4.942613E-04,2.516931E-02,1.712769E-04,-4.309735E-04},
    EIRFunPLR =           {2.576261E-01,3.416910E-01,4.007672E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller Carrier 23XL 1062kW/5.50COP/Valve" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller Carrier 23XL 1062kW/5.50COP/Valve,  !- Name
    1062000,                 !- Reference Capacity {W}
    5.50,                    !- Reference COP {W/W}
    6.67,                    !- Reference Leaving Chilled Water Temperature {C}
    29.44,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.04573,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.05716,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller Carrier 23XL 1062kW/5.50COP/Valve CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller Carrier 23XL 1062kW/5.50COP/Valve EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller Carrier 23XL 1062kW/5.50COP/Valve EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.20,                    !- Minimum Part Load Ratio
    1.01,                    !- Maximum Part Load Ratio
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
