within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_Trane_CVHF_2184kW_6_78COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -2183800,
    COP_nominal =         6.78,
    PLRMin =              0.09,
    PLRMinUnl =           0.09,
    PLRMax =              1.01,
    mEva_flow_nominal =   1000 * 0.04883,
    mCon_flow_nominal =   1000 * 0.05142,
    TEvaLvg_nominal =     273.15 + 7.78,
    TConLvg_nominal =     273.15 + 35.55,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 10.00,
    TConLvgMin =          273.15 + 30.67,
    TConLvgMax =          273.15 + 36.06,
    capFunT =             {1.214452E+00,-1.495671E-02,-2.934194E-03,1.568925E-02,-9.780218E-04,2.723254E-03},
    EIRFunT =             {1.286650E+00,3.478277E-02,2.888239E-03,-4.763798E-02,1.463610E-03,-3.194170E-03},
    EIRFunPLR =           {2.473025E+00,-1.277887E-01,-3.279364E-05,-3.156699E-01,-3.527895E-01,1.304080E-01,0.000000E+00,-8.547163E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller Trane CVHF 2184kW/6.78COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller Trane CVHF 2184kW/6.78COP/Vanes,  !- Name
    2183800,                 !- Reference Capacity {W}
    6.78,                    !- Reference COP {W/W}
    7.78,                    !- Reference Leaving Chilled Water Temperature {C}
    35.55,                   !- Reference Leaving Condenser Water Temperature {C}
    0.04883,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.05142,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller Trane CVHF 2184kW/6.78COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller Trane CVHF 2184kW/6.78COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller Trane CVHF 2184kW/6.78COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.09,                    !- Minimum Part Load Ratio
    1.01,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.09,                    !- Minimum Unloading Ratio
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
