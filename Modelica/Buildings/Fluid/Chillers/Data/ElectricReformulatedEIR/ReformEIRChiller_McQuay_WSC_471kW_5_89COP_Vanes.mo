within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_McQuay_WSC_471kW_5_89COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -471200,
    COP_nominal =         5.89,
    PLRMin =              0.10,
    PLRMinUnl =           0.10,
    PLRMax =              1.08,
    mEva_flow_nominal =   1000 * 0.01035,
    mCon_flow_nominal =   1000 * 0.01924,
    TEvaLvg_nominal =     273.15 + 8.89,
    TConLvg_nominal =     273.15 + 33.52,
    TEvaLvgMin =          273.15 + 7.22,
    TEvaLvgMax =          273.15 + 12.78,
    TConLvgMin =          273.15 + 18.81,
    TConLvgMax =          273.15 + 35.09,
    capFunT =             {-4.862465E-01,-7.293218E-02,-8.514849E-03,1.463106E-01,-4.474066E-03,9.813408E-03},
    EIRFunT =             {3.522647E-01,-3.311790E-02,-1.374491E-04,3.469525E-02,-3.624458E-04,6.749423E-04},
    EIRFunPLR =           {8.215998E-01,-2.209969E-02,-1.725652E-05,-3.831448E-02,1.896948E-01,2.308518E-02,0.000000E+00,1.349969E-02,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller McQuay WSC 471kW/5.89COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller McQuay WSC 471kW/5.89COP/Vanes,  !- Name
    471200,                  !- Reference Capacity {W}
    5.89,                    !- Reference COP {W/W}
    8.89,                    !- Reference Leaving Chilled Water Temperature {C}
    33.52,                   !- Reference Leaving Condenser Water Temperature {C}
    0.01035,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.01924,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller McQuay WSC 471kW/5.89COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller McQuay WSC 471kW/5.89COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller McQuay WSC 471kW/5.89COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.10,                    !- Minimum Part Load Ratio
    1.08,                    !- Maximum Part Load Ratio
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
