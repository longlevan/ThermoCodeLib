within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_Carrier_19XR_1294kW_7_61COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -1294100,
    COP_nominal =         7.61,
    PLRMin =              0.16,
    PLRMinUnl =           0.16,
    PLRMax =              1.02,
    mEva_flow_nominal =   1000 * 0.03243,
    mCon_flow_nominal =   1000 * 0.04732,
    TEvaLvg_nominal =     273.15 + 6.11,
    TConLvg_nominal =     273.15 + 20.18,
    TEvaLvgMin =          273.15 + 6.11,
    TEvaLvgMax =          273.15 + 12.78,
    TConLvgMin =          273.15 + 20.18,
    TConLvgMax =          273.15 + 31.56,
    capFunT =             {8.542077E-01,-5.459736E-03,-1.943025E-03,1.670770E-02,-9.079473E-04,2.332448E-03},
    EIRFunT =             {1.167182E+00,-4.534610E-03,-2.394329E-03,-1.568154E-02,4.922543E-04,5.971107E-04},
    EIRFunPLR =           {-2.942311E-02,2.842914E-02,-1.096497E-05,-1.072984E+00,3.343046E+00,-2.769791E-02,0.000000E+00,-1.251621E+00,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller Carrier 19XR 1294kW/7.61COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller Carrier 19XR 1294kW/7.61COP/Vanes,  !- Name
    1294100,                 !- Reference Capacity {W}
    7.61,                    !- Reference COP {W/W}
    6.11,                    !- Reference Leaving Chilled Water Temperature {C}
    20.18,                   !- Reference Leaving Condenser Water Temperature {C}
    0.03243,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.04732,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller Carrier 19XR 1294kW/7.61COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller Carrier 19XR 1294kW/7.61COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller Carrier 19XR 1294kW/7.61COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.16,                    !- Minimum Part Load Ratio
    1.02,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.16,                    !- Minimum Unloading Ratio
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
