within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_Carrier_19XL_1797kW_5_69COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -1797000,
    COP_nominal =         5.69,
    PLRMin =              0.39,
    PLRMinUnl =           0.39,
    PLRMax =              1.01,
    mEva_flow_nominal =   1000 * 0.07737,
    mCon_flow_nominal =   1000 * 0.09672,
    TEvaLvg_nominal =     273.15 + 6.67,
    TConLvg_nominal =     273.15 + 34.67,
    TEvaLvgMin =          273.15 + 6.67,
    TEvaLvgMax =          273.15 + 10.00,
    TConLvgMin =          273.15 + 26.59,
    TConLvgMax =          273.15 + 34.91,
    capFunT =             {9.173209E-01,4.990036E-02,-1.196031E-03,-2.024380E-03,-3.141698E-05,-3.752508E-04},
    EIRFunT =             {1.079738E+00,-4.447776E-02,1.617276E-03,8.485662E-04,8.268362E-05,5.543283E-05},
    EIRFunPLR =           {5.147565E+00,-1.604653E-01,2.139293E-05,-3.215408E+00,-1.636618E+00,1.592219E-01,0.000000E+00,7.224656E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller Carrier 19XL 1797kW/5.69COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller Carrier 19XL 1797kW/5.69COP/Vanes,  !- Name
    1797000,                 !- Reference Capacity {W}
    5.69,                    !- Reference COP {W/W}
    6.67,                    !- Reference Leaving Chilled Water Temperature {C}
    34.67,                   !- Reference Leaving Condenser Water Temperature {C}
    0.07737,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.09672,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller Carrier 19XL 1797kW/5.69COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller Carrier 19XL 1797kW/5.69COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller Carrier 19XL 1797kW/5.69COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.39,                    !- Minimum Part Load Ratio
    1.01,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.39,                    !- Minimum Unloading Ratio
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
