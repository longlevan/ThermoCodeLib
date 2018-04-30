within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_Carrier_19XR_1727kW_9_04COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -1726600,
    COP_nominal =         9.04,
    PLRMin =              0.17,
    PLRMinUnl =           0.17,
    PLRMax =              1.02,
    mEva_flow_nominal =   1000 * 0.03912,
    mCon_flow_nominal =   1000 * 0.07192,
    TEvaLvg_nominal =     273.15 + 7.78,
    TConLvg_nominal =     273.15 + 19.16,
    TEvaLvgMin =          273.15 + 4.44,
    TEvaLvgMax =          273.15 + 8.89,
    TConLvgMin =          273.15 + 18.94,
    TConLvgMax =          273.15 + 35.13,
    capFunT =             {2.574689E-01,2.272600E-03,-5.815624E-03,6.540193E-02,-1.958828E-03,3.701057E-03},
    EIRFunT =             {1.247058E+00,-1.353289E-02,-1.160647E-03,-2.086541E-02,9.395685E-04,-2.989847E-05},
    EIRFunPLR =           {1.552467E-02,1.482533E-02,-2.165341E-05,9.371381E-01,-5.717707E-01,-1.368813E-02,0.000000E+00,6.047782E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller Carrier 19XR 1727kW/9.04COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller Carrier 19XR 1727kW/9.04COP/Vanes,  !- Name
    1726600,                 !- Reference Capacity {W}
    9.04,                    !- Reference COP {W/W}
    7.78,                    !- Reference Leaving Chilled Water Temperature {C}
    19.16,                   !- Reference Leaving Condenser Water Temperature {C}
    0.03912,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.07192,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller Carrier 19XR 1727kW/9.04COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller Carrier 19XR 1727kW/9.04COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller Carrier 19XR 1727kW/9.04COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.17,                    !- Minimum Part Load Ratio
    1.02,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.17,                    !- Minimum Unloading Ratio
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
