within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_McQuay_PEH_819kW_8_11COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -819300,
    COP_nominal =         8.11,
    PLRMin =              0.09,
    PLRMinUnl =           0.09,
    PLRMax =              1.05,
    mEva_flow_nominal =   1000 * 0.02524,
    mCon_flow_nominal =   1000 * 0.03785,
    TEvaLvg_nominal =     273.15 + 4.44,
    TConEnt_nominal =     273.15 + 12.78,
    TEvaLvgMin =          273.15 + 4.44,
    TEvaLvgMax =          273.15 + 8.89,
    TConEntMin =          273.15 + 12.78,
    TConEntMax =          273.15 + 29.44,
    capFunT =             {7.392673E-01,4.328784E-02,-4.529446E-03,1.525410E-02,-1.141458E-03,2.651124E-03},
    EIRFunT =             {5.925176E-01,-1.908391E-02,-1.852692E-03,4.051551E-02,-2.908719E-04,1.059047E-03},
    EIRFunPLR =           {2.830681E-01,2.254147E-01,4.916649E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller McQuay PEH 819kW/8.11COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller McQuay PEH 819kW/8.11COP/Vanes,  !- Name
    819300,                  !- Reference Capacity {W}
    8.11,                    !- Reference COP {W/W}
    4.44,                    !- Reference Leaving Chilled Water Temperature {C}
    12.78,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.02524,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.03785,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller McQuay PEH 819kW/8.11COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller McQuay PEH 819kW/8.11COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller McQuay PEH 819kW/8.11COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.09,                    !- Minimum Part Load Ratio
    1.05,                    !- Maximum Part Load Ratio
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
