within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_Carrier_23XL_865kW_6_05COP_Valve =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -865100,
    COP_nominal =         6.05,
    PLRMin =              0.20,
    PLRMinUnl =           0.20,
    PLRMax =              1.03,
    mEva_flow_nominal =   1000 * 0.03716,
    mCon_flow_nominal =   1000 * 0.04366,
    TEvaLvg_nominal =     273.15 + 4.44,
    TConEnt_nominal =     273.15 + 26.11,
    TEvaLvgMin =          273.15 + 3.33,
    TEvaLvgMax =          273.15 + 7.78,
    TConEntMin =          273.15 + 12.78,
    TConEntMax =          273.15 + 29.44,
    capFunT =             {5.079758E-01,-2.344768E-02,-3.296630E-03,3.508384E-02,-8.359630E-04,2.585294E-03},
    EIRFunT =             {5.437328E-01,7.625344E-03,-9.201579E-05,1.339616E-03,8.286757E-04,-1.543530E-03},
    EIRFunPLR =           {2.545235E-01,3.104981E-01,4.347781E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller Carrier 23XL 865kW/6.05COP/Valve" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller Carrier 23XL 865kW/6.05COP/Valve,  !- Name
    865100,                  !- Reference Capacity {W}
    6.05,                    !- Reference COP {W/W}
    4.44,                    !- Reference Leaving Chilled Water Temperature {C}
    26.11,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.03716,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.04366,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller Carrier 23XL 865kW/6.05COP/Valve CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller Carrier 23XL 865kW/6.05COP/Valve EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller Carrier 23XL 865kW/6.05COP/Valve EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
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
