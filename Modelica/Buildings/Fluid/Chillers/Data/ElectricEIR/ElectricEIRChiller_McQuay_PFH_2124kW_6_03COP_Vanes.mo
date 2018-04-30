within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_McQuay_PFH_2124kW_6_03COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -2124000,
    COP_nominal =         6.03,
    PLRMin =              0.09,
    PLRMinUnl =           0.09,
    PLRMax =              1.03,
    mEva_flow_nominal =   1000 * 0.05552,
    mCon_flow_nominal =   1000 * 0.07981,
    TEvaLvg_nominal =     273.15 + 8.89,
    TConEnt_nominal =     273.15 + 23.89,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 8.89,
    TConEntMin =          273.15 + 12.78,
    TConEntMax =          273.15 + 29.44,
    capFunT =             {1.040134E+00,-1.745650E-02,1.084856E-03,6.629328E-03,-8.008991E-04,1.567769E-03},
    EIRFunT =             {1.157799E+00,-3.621524E-02,-3.684818E-03,-1.202959E-02,-7.378548E-05,3.787365E-03},
    EIRFunPLR =           {1.051419E-01,2.033679E-01,6.902026E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller McQuay PFH 2124kW/6.03COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller McQuay PFH 2124kW/6.03COP/Vanes,  !- Name
    2124000,                 !- Reference Capacity {W}
    6.03,                    !- Reference COP {W/W}
    8.89,                    !- Reference Leaving Chilled Water Temperature {C}
    23.89,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.05552,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.07981,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller McQuay PFH 2124kW/6.03COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller McQuay PFH 2124kW/6.03COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller McQuay PFH 2124kW/6.03COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.09,                    !- Minimum Part Load Ratio
    1.03,                    !- Maximum Part Load Ratio
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
