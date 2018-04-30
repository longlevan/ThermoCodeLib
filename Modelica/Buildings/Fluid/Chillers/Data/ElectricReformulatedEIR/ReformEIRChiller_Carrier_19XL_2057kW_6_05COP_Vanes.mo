within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_Carrier_19XL_2057kW_6_05COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -2057200,
    COP_nominal =         6.05,
    PLRMin =              0.28,
    PLRMinUnl =           0.28,
    PLRMax =              1.03,
    mEva_flow_nominal =   1000 * 0.08322,
    mCon_flow_nominal =   1000 * 0.09722,
    TEvaLvg_nominal =     273.15 + 7.78,
    TConLvg_nominal =     273.15 + 29.79,
    TEvaLvgMin =          273.15 + 4.44,
    TEvaLvgMax =          273.15 + 8.89,
    TConLvgMin =          273.15 + 17.89,
    TConLvgMax =          273.15 + 35.37,
    capFunT =             {6.448091E-01,-3.315001E-02,-3.168485E-03,3.196459E-02,-1.138880E-03,3.799700E-03},
    EIRFunT =             {7.341312E-01,-7.592418E-02,-2.065951E-03,3.153945E-02,-8.888217E-04,3.650961E-03},
    EIRFunPLR =           {1.353291E-01,-5.973382E-03,-2.152787E-05,1.844856E+00,-2.868168E+00,7.003543E-03,0.000000E+00,1.875512E+00,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller Carrier 19XL 2057kW/6.05COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller Carrier 19XL 2057kW/6.05COP/Vanes,  !- Name
    2057200,                 !- Reference Capacity {W}
    6.05,                    !- Reference COP {W/W}
    7.78,                    !- Reference Leaving Chilled Water Temperature {C}
    29.79,                   !- Reference Leaving Condenser Water Temperature {C}
    0.08322,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.09722,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller Carrier 19XL 2057kW/6.05COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller Carrier 19XL 2057kW/6.05COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller Carrier 19XL 2057kW/6.05COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.28,                    !- Minimum Part Load Ratio
    1.03,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.28,                    !- Minimum Unloading Ratio
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
