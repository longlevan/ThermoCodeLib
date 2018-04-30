within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_Carrier_19EX_5208kW_6_88COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -5208200,
    COP_nominal =         6.88,
    PLRMin =              0.20,
    PLRMinUnl =           0.20,
    PLRMax =              1.04,
    mEva_flow_nominal =   1000 * 0.18283,
    mCon_flow_nominal =   1000 * 0.25293,
    TEvaLvg_nominal =     273.15 + 6.67,
    TConLvg_nominal =     273.15 + 31.75,
    TEvaLvgMin =          273.15 + 4.44,
    TEvaLvgMax =          273.15 + 8.89,
    TConLvgMin =          273.15 + 21.08,
    TConLvgMax =          273.15 + 35.31,
    capFunT =             {1.254471E-01,-1.028175E-01,-4.242764E-03,9.372985E-02,-2.733787E-03,7.161423E-03},
    EIRFunT =             {5.363910E-01,-8.005283E-04,-2.759052E-05,7.405978E-03,4.159925E-04,-8.731268E-04},
    EIRFunPLR =           {3.759577E-01,-1.540144E-02,6.020001E-05,1.240869E+00,-1.267595E+00,1.195934E-02,0.000000E+00,6.977113E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller Carrier 19EX 5208kW/6.88COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller Carrier 19EX 5208kW/6.88COP/Vanes,  !- Name
    5208200,                 !- Reference Capacity {W}
    6.88,                    !- Reference COP {W/W}
    6.67,                    !- Reference Leaving Chilled Water Temperature {C}
    31.75,                   !- Reference Leaving Condenser Water Temperature {C}
    0.18283,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.25293,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller Carrier 19EX 5208kW/6.88COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller Carrier 19EX 5208kW/6.88COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller Carrier 19EX 5208kW/6.88COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
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
