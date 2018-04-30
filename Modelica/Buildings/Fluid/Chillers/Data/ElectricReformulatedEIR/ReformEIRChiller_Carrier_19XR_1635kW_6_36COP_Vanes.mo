within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_Carrier_19XR_1635kW_6_36COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -1635200,
    COP_nominal =         6.36,
    PLRMin =              0.18,
    PLRMinUnl =           0.18,
    PLRMax =              1.03,
    mEva_flow_nominal =   1000 * 0.03432,
    mCon_flow_nominal =   1000 * 0.05035,
    TEvaLvg_nominal =     273.15 + 8.89,
    TConLvg_nominal =     273.15 + 35.66,
    TEvaLvgMin =          273.15 + 7.22,
    TEvaLvgMax =          273.15 + 12.78,
    TConLvgMin =          273.15 + 20.44,
    TConLvgMax =          273.15 + 36.54,
    capFunT =             {3.092875E-01,-3.293511E-02,-4.782933E-03,6.860171E-02,-2.017588E-03,4.670722E-03},
    EIRFunT =             {6.499856E-01,-6.235681E-03,-2.219743E-04,8.417414E-03,2.314691E-04,-5.679479E-04},
    EIRFunPLR =           {4.206254E-01,-1.310337E-03,8.796454E-05,6.600709E-02,4.642310E-01,-3.720394E-03,0.000000E+00,1.189466E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller Carrier 19XR 1635kW/6.36COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller Carrier 19XR 1635kW/6.36COP/Vanes,  !- Name
    1635200,                 !- Reference Capacity {W}
    6.36,                    !- Reference COP {W/W}
    8.89,                    !- Reference Leaving Chilled Water Temperature {C}
    35.66,                   !- Reference Leaving Condenser Water Temperature {C}
    0.03432,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.05035,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller Carrier 19XR 1635kW/6.36COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller Carrier 19XR 1635kW/6.36COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller Carrier 19XR 1635kW/6.36COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.18,                    !- Minimum Part Load Ratio
    1.03,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.18,                    !- Minimum Unloading Ratio
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
