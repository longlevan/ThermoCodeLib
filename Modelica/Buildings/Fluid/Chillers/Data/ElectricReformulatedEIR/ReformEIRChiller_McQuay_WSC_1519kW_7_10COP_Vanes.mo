within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_McQuay_WSC_1519kW_7_10COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -1519200,
    COP_nominal =         7.10,
    PLRMin =              0.10,
    PLRMinUnl =           0.10,
    PLRMax =              1.03,
    mEva_flow_nominal =   1000 * 0.03186,
    mCon_flow_nominal =   1000 * 0.08139,
    TEvaLvg_nominal =     273.15 + 8.89,
    TConLvg_nominal =     273.15 + 31.76,
    TEvaLvgMin =          273.15 + 7.22,
    TEvaLvgMax =          273.15 + 12.78,
    TConLvgMin =          273.15 + 19.71,
    TConLvgMax =          273.15 + 33.53,
    capFunT =             {1.244930E+00,-3.988254E-02,-8.293893E-03,3.053704E-02,-2.899547E-03,9.784227E-03},
    EIRFunT =             {1.087821E+00,-2.763242E-02,-3.692617E-03,-1.419848E-02,6.903140E-05,2.920296E-03},
    EIRFunPLR =           {4.209093E-01,-1.860468E-02,1.580518E-05,8.654910E-01,-6.538795E-01,1.786849E-02,0.000000E+00,3.759658E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller McQuay WSC 1519kW/7.10COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller McQuay WSC 1519kW/7.10COP/Vanes,  !- Name
    1519200,                 !- Reference Capacity {W}
    7.10,                    !- Reference COP {W/W}
    8.89,                    !- Reference Leaving Chilled Water Temperature {C}
    31.76,                   !- Reference Leaving Condenser Water Temperature {C}
    0.03186,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.08139,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller McQuay WSC 1519kW/7.10COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller McQuay WSC 1519kW/7.10COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller McQuay WSC 1519kW/7.10COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.10,                    !- Minimum Part Load Ratio
    1.03,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.10,                    !- Minimum Unloading Ratio
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
