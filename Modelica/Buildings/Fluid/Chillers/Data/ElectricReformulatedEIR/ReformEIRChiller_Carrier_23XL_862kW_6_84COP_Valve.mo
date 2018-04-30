within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_Carrier_23XL_862kW_6_84COP_Valve =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -861500,
    COP_nominal =         6.84,
    PLRMin =              0.30,
    PLRMinUnl =           0.30,
    PLRMax =              1.05,
    mEva_flow_nominal =   1000 * 0.06782,
    mCon_flow_nominal =   1000 * 0.04296,
    TEvaLvg_nominal =     273.15 + 9.69,
    TConLvg_nominal =     273.15 + 29.39,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 10.00,
    TConLvgMin =          273.15 + 16.41,
    TConLvgMax =          273.15 + 29.48,
    capFunT =             {-3.092995E-01,-5.286556E-02,-3.325673E-03,1.124372E-01,-2.612023E-03,3.825379E-03},
    EIRFunT =             {6.678615E-01,-9.383184E-03,2.032594E-03,3.679404E-03,8.601638E-04,-2.160177E-03},
    EIRFunPLR =           {8.851376E-01,-3.243560E-02,1.524188E-05,-4.919407E-01,1.397112E+00,3.165504E-02,0.000000E+00,-7.803717E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller Carrier 23XL 862kW/6.84COP/Valve" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller Carrier 23XL 862kW/6.84COP/Valve,  !- Name
    861500,                  !- Reference Capacity {W}
    6.84,                    !- Reference COP {W/W}
    9.69,                    !- Reference Leaving Chilled Water Temperature {C}
    29.39,                   !- Reference Leaving Condenser Water Temperature {C}
    0.06782,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.04296,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller Carrier 23XL 862kW/6.84COP/Valve CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller Carrier 23XL 862kW/6.84COP/Valve EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller Carrier 23XL 862kW/6.84COP/Valve EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.30,                    !- Minimum Part Load Ratio
    1.05,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.30,                    !- Minimum Unloading Ratio
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
