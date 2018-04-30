within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_Carrier_19XR_2391kW_6_77COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -2391300,
    COP_nominal =         6.77,
    PLRMin =              0.20,
    PLRMinUnl =           0.20,
    PLRMax =              1.03,
    mEva_flow_nominal =   1000 * 0.06858,
    mCon_flow_nominal =   1000 * 0.0846,
    TEvaLvg_nominal =     273.15 + 7.22,
    TConLvg_nominal =     273.15 + 31.65,
    TEvaLvgMin =          273.15 + 6.67,
    TEvaLvgMax =          273.15 + 12.22,
    TConLvgMin =          273.15 + 19.72,
    TConLvgMax =          273.15 + 32.63,
    capFunT =             {-1.092340E-01,-7.214951E-02,-1.929403E-03,1.073964E-01,-2.585892E-03,4.163448E-03},
    EIRFunT =             {6.095032E-01,-1.108553E-02,6.938966E-04,1.166583E-02,2.514251E-04,-7.733820E-04},
    EIRFunPLR =           {4.306200E-01,-7.328716E-03,9.930747E-06,9.234623E-01,-1.158929E+00,6.792175E-03,0.000000E+00,8.117517E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller Carrier 19XR 2391kW/6.77COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller Carrier 19XR 2391kW/6.77COP/Vanes,  !- Name
    2391300,                 !- Reference Capacity {W}
    6.77,                    !- Reference COP {W/W}
    7.22,                    !- Reference Leaving Chilled Water Temperature {C}
    31.65,                   !- Reference Leaving Condenser Water Temperature {C}
    0.06858,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.0846,                  !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller Carrier 19XR 2391kW/6.77COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller Carrier 19XR 2391kW/6.77COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller Carrier 19XR 2391kW/6.77COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.20,                    !- Minimum Part Load Ratio
    1.03,                    !- Maximum Part Load Ratio
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
