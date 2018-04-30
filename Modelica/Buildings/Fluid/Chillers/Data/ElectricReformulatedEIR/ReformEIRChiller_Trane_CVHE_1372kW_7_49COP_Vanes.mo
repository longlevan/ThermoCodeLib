within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_Trane_CVHE_1372kW_7_49COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -1371500,
    COP_nominal =         7.49,
    PLRMin =              0.41,
    PLRMinUnl =           0.41,
    PLRMax =              1.11,
    mEva_flow_nominal =   1000 * 0.05047,
    mCon_flow_nominal =   1000 * 0.07571,
    TEvaLvg_nominal =     273.15 + 5.56,
    TConLvg_nominal =     273.15 + 28.80,
    TEvaLvgMin =          273.15 + 4.44,
    TEvaLvgMax =          273.15 + 8.89,
    TConLvgMin =          273.15 + 17.87,
    TConLvgMax =          273.15 + 34.26,
    capFunT =             {3.397637E-01,3.431595E-02,-1.008753E-02,5.766544E-02,-2.300721E-03,6.035544E-03},
    EIRFunT =             {1.033692E+00,3.558404E-02,3.589722E-03,-2.717762E-02,1.379031E-03,-4.158610E-03},
    EIRFunPLR =           {4.723036E-01,8.571830E-03,4.576667E-05,-1.502847E+00,3.731872E+00,-1.107635E-02,0.000000E+00,-1.669562E+00,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller Trane CVHE 1372kW/7.49COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller Trane CVHE 1372kW/7.49COP/Vanes,  !- Name
    1371500,                 !- Reference Capacity {W}
    7.49,                    !- Reference COP {W/W}
    5.56,                    !- Reference Leaving Chilled Water Temperature {C}
    28.80,                   !- Reference Leaving Condenser Water Temperature {C}
    0.05047,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.07571,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller Trane CVHE 1372kW/7.49COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller Trane CVHE 1372kW/7.49COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller Trane CVHE 1372kW/7.49COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.41,                    !- Minimum Part Load Ratio
    1.11,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.41,                    !- Minimum Unloading Ratio
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
