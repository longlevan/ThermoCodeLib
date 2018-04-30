within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_Carrier_19XR_1284kW_6_20COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -1283500,
    COP_nominal =         6.20,
    PLRMin =              0.20,
    PLRMinUnl =           0.20,
    PLRMax =              1.02,
    mEva_flow_nominal =   1000 * 0.03684,
    mCon_flow_nominal =   1000 * 0.05337,
    TEvaLvg_nominal =     273.15 + 5.56,
    TConLvg_nominal =     273.15 + 29.46,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 8.89,
    TConLvgMin =          273.15 + 19.55,
    TConLvgMax =          273.15 + 30.85,
    capFunT =             {1.115795E+00,-2.963853E-02,-1.135671E-03,4.184083E-03,-4.382921E-04,2.096512E-03},
    EIRFunT =             {7.586434E-01,-1.231609E-02,1.784584E-03,-2.678401E-03,6.302421E-04,-1.385469E-03},
    EIRFunPLR =           {9.435414E-01,-6.553709E-02,1.115089E-04,1.530548E+00,-1.486930E+00,6.031382E-02,0.000000E+00,7.320523E-02,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller Carrier 19XR 1284kW/6.20COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller Carrier 19XR 1284kW/6.20COP/Vanes,  !- Name
    1283500,                 !- Reference Capacity {W}
    6.20,                    !- Reference COP {W/W}
    5.56,                    !- Reference Leaving Chilled Water Temperature {C}
    29.46,                   !- Reference Leaving Condenser Water Temperature {C}
    0.03684,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.05337,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller Carrier 19XR 1284kW/6.20COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller Carrier 19XR 1284kW/6.20COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller Carrier 19XR 1284kW/6.20COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.20,                    !- Minimum Part Load Ratio
    1.02,                    !- Maximum Part Load Ratio
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
