within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_Carrier_19XR_1213kW_7_78COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -1213200,
    COP_nominal =         7.78,
    PLRMin =              0.17,
    PLRMinUnl =           0.17,
    PLRMax =              1.03,
    mEva_flow_nominal =   1000 * 0.03243,
    mCon_flow_nominal =   1000 * 0.04782,
    TEvaLvg_nominal =     273.15 + 6.11,
    TConLvg_nominal =     273.15 + 19.63,
    TEvaLvgMin =          273.15 + 6.11,
    TEvaLvgMax =          273.15 + 12.78,
    TConLvgMin =          273.15 + 19.63,
    TConLvgMax =          273.15 + 30.97,
    capFunT =             {7.578317E-01,-2.467497E-02,-1.185171E-03,3.095499E-02,-1.160103E-03,2.330164E-03},
    EIRFunT =             {1.009816E+00,-1.640134E-02,7.295439E-04,-5.050832E-03,6.901476E-04,-9.104064E-04},
    EIRFunPLR =           {2.257912E-01,3.697616E-03,-2.645195E-05,7.936322E-01,-4.424994E-01,-2.424456E-03,0.000000E+00,4.078706E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller Carrier 19XR 1213kW/7.78COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller Carrier 19XR 1213kW/7.78COP/Vanes,  !- Name
    1213200,                 !- Reference Capacity {W}
    7.78,                    !- Reference COP {W/W}
    6.11,                    !- Reference Leaving Chilled Water Temperature {C}
    19.63,                   !- Reference Leaving Condenser Water Temperature {C}
    0.03243,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.04782,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller Carrier 19XR 1213kW/7.78COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller Carrier 19XR 1213kW/7.78COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller Carrier 19XR 1213kW/7.78COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.17,                    !- Minimum Part Load Ratio
    1.03,                    !- Maximum Part Load Ratio
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
