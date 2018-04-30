within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_Carrier_19XL_1674kW_7_89COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -1673900,
    COP_nominal =         7.89,
    PLRMin =              0.32,
    PLRMinUnl =           0.32,
    PLRMax =              1.03,
    mEva_flow_nominal =   1000 * 0.07571,
    mCon_flow_nominal =   1000 * 0.09085,
    TEvaLvg_nominal =     273.15 + 4.44,
    TConLvg_nominal =     273.15 + 17.74,
    TEvaLvgMin =          273.15 + 4.44,
    TEvaLvgMax =          273.15 + 8.89,
    TConLvgMin =          273.15 + 17.74,
    TConLvgMax =          273.15 + 34.74,
    capFunT =             {-1.604710E-01,-5.170996E-02,-1.502523E-03,1.078170E-01,-2.402469E-03,3.063152E-03},
    EIRFunT =             {1.038212E+00,-5.515980E-02,3.732790E-03,2.569418E-03,5.139774E-04,-7.883225E-04},
    EIRFunPLR =           {6.276299E-01,-2.633919E-02,5.269229E-05,1.008569E+00,-1.063131E+00,2.353572E-02,0.000000E+00,4.628347E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller Carrier 19XL 1674kW/7.89COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller Carrier 19XL 1674kW/7.89COP/Vanes,  !- Name
    1673900,                 !- Reference Capacity {W}
    7.89,                    !- Reference COP {W/W}
    4.44,                    !- Reference Leaving Chilled Water Temperature {C}
    17.74,                   !- Reference Leaving Condenser Water Temperature {C}
    0.07571,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.09085,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller Carrier 19XL 1674kW/7.89COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller Carrier 19XL 1674kW/7.89COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller Carrier 19XL 1674kW/7.89COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.32,                    !- Minimum Part Load Ratio
    1.03,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.32,                    !- Minimum Unloading Ratio
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
