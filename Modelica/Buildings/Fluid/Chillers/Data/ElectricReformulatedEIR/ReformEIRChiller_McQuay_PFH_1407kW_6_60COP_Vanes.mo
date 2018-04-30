within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_McQuay_PFH_1407kW_6_60COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -1406600,
    COP_nominal =         6.60,
    PLRMin =              0.10,
    PLRMinUnl =           0.10,
    PLRMax =              1.05,
    mEva_flow_nominal =   1000 * 0.04038,
    mCon_flow_nominal =   1000 * 0.05804,
    TEvaLvg_nominal =     273.15 + 5.56,
    TConLvg_nominal =     273.15 + 29.45,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 8.89,
    TConLvgMin =          273.15 + 21.90,
    TConLvgMax =          273.15 + 32.26,
    capFunT =             {4.857520E-01,-1.139327E-01,-1.036160E-02,1.146315E-01,-4.547626E-03,1.263077E-02},
    EIRFunT =             {9.392120E-01,3.430098E-02,-5.178425E-03,-2.274002E-02,6.827442E-04,7.649464E-04},
    EIRFunPLR =           {-6.446736E-01,5.352860E-02,1.582353E-06,2.669373E-01,1.497456E+00,-5.364380E-02,0.000000E+00,-1.183319E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller McQuay PFH 1407kW/6.60COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller McQuay PFH 1407kW/6.60COP/Vanes,  !- Name
    1406600,                 !- Reference Capacity {W}
    6.60,                    !- Reference COP {W/W}
    5.56,                    !- Reference Leaving Chilled Water Temperature {C}
    29.45,                   !- Reference Leaving Condenser Water Temperature {C}
    0.04038,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.05804,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller McQuay PFH 1407kW/6.60COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller McQuay PFH 1407kW/6.60COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller McQuay PFH 1407kW/6.60COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.10,                    !- Minimum Part Load Ratio
    1.05,                    !- Maximum Part Load Ratio
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
