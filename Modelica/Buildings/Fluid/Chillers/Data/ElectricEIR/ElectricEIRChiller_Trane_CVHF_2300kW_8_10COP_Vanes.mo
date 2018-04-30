within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_Trane_CVHF_2300kW_8_10COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -2299900,
    COP_nominal =         8.10,
    PLRMin =              0.23,
    PLRMinUnl =           0.23,
    PLRMax =              1.02,
    mEva_flow_nominal =   1000 * 0.07571,
    mCon_flow_nominal =   1000 * 0.09085,
    TEvaLvg_nominal =     273.15 + 4.44,
    TConEnt_nominal =     273.15 + 12.78,
    TEvaLvgMin =          273.15 + 4.44,
    TEvaLvgMax =          273.15 + 8.89,
    TConEntMin =          273.15 + 12.78,
    TConEntMax =          273.15 + 29.44,
    capFunT =             {6.268137E-01,3.920902E-02,-5.475881E-04,3.072669E-02,-1.474615E-03,8.577783E-04},
    EIRFunT =             {7.178121E-01,6.561784E-03,8.193740E-06,2.319141E-02,-1.755983E-06,-8.834410E-04},
    EIRFunPLR =           {1.161399E-01,4.347344E-01,4.486380E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller Trane CVHF 2300kW/8.10COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller Trane CVHF 2300kW/8.10COP/Vanes,  !- Name
    2299900,                 !- Reference Capacity {W}
    8.10,                    !- Reference COP {W/W}
    4.44,                    !- Reference Leaving Chilled Water Temperature {C}
    12.78,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.07571,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.09085,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller Trane CVHF 2300kW/8.10COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller Trane CVHF 2300kW/8.10COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller Trane CVHF 2300kW/8.10COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.23,                    !- Minimum Part Load Ratio
    1.02,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.23,                    !- Minimum Unloading Ratio
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
