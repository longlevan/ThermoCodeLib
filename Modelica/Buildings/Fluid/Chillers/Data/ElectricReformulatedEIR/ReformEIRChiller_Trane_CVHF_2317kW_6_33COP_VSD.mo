within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_Trane_CVHF_2317kW_6_33COP_VSD =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -2317400,
    COP_nominal =         6.33,
    PLRMin =              0.10,
    PLRMinUnl =           0.10,
    PLRMax =              1.04,
    mEva_flow_nominal =   1000 * 0.09085,
    mCon_flow_nominal =   1000 * 0.11356,
    TEvaLvg_nominal =     273.15 + 5.56,
    TConLvg_nominal =     273.15 + 35.10,
    TEvaLvgMin =          273.15 + 4.44,
    TEvaLvgMax =          273.15 + 8.89,
    TConLvgMin =          273.15 + 17.67,
    TConLvgMax =          273.15 + 35.67,
    capFunT =             {6.632457E-01,4.608638E-03,-1.100111E-03,1.651605E-02,-4.753748E-04,1.648311E-03},
    EIRFunT =             {2.905409E-01,-2.093028E-02,9.792522E-04,1.493146E-02,3.511684E-04,-8.356167E-04},
    EIRFunPLR =           {-4.540034E-01,3.433262E-02,4.845589E-05,9.799190E-01,2.028044E-01,-3.705958E-02,0.000000E+00,3.066979E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0) "ReformEIRChiller Trane CVHF 2317kW/6.33COP/VSD"
  annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller Trane CVHF 2317kW/6.33COP/VSD,  !- Name
    2317400,                 !- Reference Capacity {W}
    6.33,                    !- Reference COP {W/W}
    5.56,                    !- Reference Leaving Chilled Water Temperature {C}
    35.10,                   !- Reference Leaving Condenser Water Temperature {C}
    0.09085,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.11356,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller Trane CVHF 2317kW/6.33COP/VSD CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller Trane CVHF 2317kW/6.33COP/VSD EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller Trane CVHF 2317kW/6.33COP/VSD EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.10,                    !- Minimum Part Load Ratio
    1.04,                    !- Maximum Part Load Ratio
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
