within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_York_YT_1758kW_6_28COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -1758300,
    COP_nominal =         6.28,
    PLRMin =              0.20,
    PLRMinUnl =           0.20,
    PLRMax =              1.06,
    mEva_flow_nominal =   1000 * 0.07571,
    mCon_flow_nominal =   1000 * 0.09464,
    TEvaLvg_nominal =     273.15 + 6.67,
    TConLvg_nominal =     273.15 + 34.60,
    TEvaLvgMin =          273.15 + 4.44,
    TEvaLvgMax =          273.15 + 8.89,
    TConLvgMin =          273.15 + 20.46,
    TConLvgMax =          273.15 + 39.72,
    capFunT =             {5.062633E-01,-9.373882E-03,-2.822764E-03,4.202164E-02,-1.092132E-03,2.074549E-03},
    EIRFunT =             {5.699849E-01,-9.813327E-03,4.223116E-04,4.842283E-03,4.078201E-04,-7.615896E-04},
    EIRFunPLR =           {2.911331E-01,-4.317969E-03,1.448369E-05,6.226793E-01,7.992053E-02,3.393326E-03,0.000000E+00,1.919540E-02,0.000000E+00,0.000000E+00},
    etaMotor =            1.0) "ReformEIRChiller York YT 1758kW/6.28COP/Vanes"
  annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller York YT 1758kW/6.28COP/Vanes,  !- Name
    1758300,                 !- Reference Capacity {W}
    6.28,                    !- Reference COP {W/W}
    6.67,                    !- Reference Leaving Chilled Water Temperature {C}
    34.60,                   !- Reference Leaving Condenser Water Temperature {C}
    0.07571,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.09464,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller York YT 1758kW/6.28COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller York YT 1758kW/6.28COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller York YT 1758kW/6.28COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.20,                    !- Minimum Part Load Ratio
    1.06,                    !- Maximum Part Load Ratio
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
