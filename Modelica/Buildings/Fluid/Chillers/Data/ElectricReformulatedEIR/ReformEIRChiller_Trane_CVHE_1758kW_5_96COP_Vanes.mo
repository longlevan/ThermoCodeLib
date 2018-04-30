within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_Trane_CVHE_1758kW_5_96COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -1758300,
    COP_nominal =         5.96,
    PLRMin =              0.20,
    PLRMinUnl =           0.20,
    PLRMax =              1.04,
    mEva_flow_nominal =   1000 * 0.07571,
    mCon_flow_nominal =   1000 * 0.09464,
    TEvaLvg_nominal =     273.15 + 6.67,
    TConLvg_nominal =     273.15 + 34.63,
    TEvaLvgMin =          273.15 + 4.44,
    TEvaLvgMax =          273.15 + 8.89,
    TConLvgMin =          273.15 + 28.68,
    TConLvgMax =          273.15 + 40.15,
    capFunT =             {-3.784203E-01,-8.333229E-02,-8.509675E-03,1.031937E-01,-2.432261E-03,7.065530E-03},
    EIRFunT =             {1.583438E+00,-3.412919E-03,4.476231E-03,-5.243024E-02,1.295102E-03,-2.210725E-03},
    EIRFunPLR =           {1.466664E+00,-4.222011E-02,-1.153513E-04,-7.738226E-02,-9.896333E-01,5.014539E-02,0.000000E+00,4.671251E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller Trane CVHE 1758kW/5.96COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller Trane CVHE 1758kW/5.96COP/Vanes,  !- Name
    1758300,                 !- Reference Capacity {W}
    5.96,                    !- Reference COP {W/W}
    6.67,                    !- Reference Leaving Chilled Water Temperature {C}
    34.63,                   !- Reference Leaving Condenser Water Temperature {C}
    0.07571,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.09464,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller Trane CVHE 1758kW/5.96COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller Trane CVHE 1758kW/5.96COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller Trane CVHE 1758kW/5.96COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.20,                    !- Minimum Part Load Ratio
    1.04,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.20,                    !- Minimum Unloading Ratio
    Chilled Water Side Inlet Node,  !- Chilled Water Inlet Node Name
    Chilled Water Side Outlet Node,  !- Chilled Water Outlet Node Name
    Condenser Side Inlet Node,  !- Condenser Inlet Node Name
    Condenser Side Outlet Node,  !- Condenser Outlet Node Name
    1.0,                     !- Compressor Motor Efficiency
    2.0,                     !- Leaving Chilled Water Lower Temperature Limit {C}
    ConstantFlow,            !- Chiller Flow Mode Type
    0.0;                     !- Design Heat Recovery Water Flow Rate {m3/s}
</pre>
</html>"));
