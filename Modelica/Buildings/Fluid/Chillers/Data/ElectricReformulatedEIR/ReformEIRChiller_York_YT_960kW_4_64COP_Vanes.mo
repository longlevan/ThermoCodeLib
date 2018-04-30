within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_York_YT_960kW_4_64COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -960000,
    COP_nominal =         4.64,
    PLRMin =              0.09,
    PLRMinUnl =           0.09,
    PLRMax =              1.1,
    mEva_flow_nominal =   1000 * 0.03785,
    mCon_flow_nominal =   1000 * 0.04732,
    TEvaLvg_nominal =     273.15 + 4.44,
    TConLvg_nominal =     273.15 + 32.01,
    TEvaLvgMin =          273.15 + 3.33,
    TEvaLvgMax =          273.15 + 7.78,
    TConLvgMin =          273.15 + 17.04,
    TConLvgMax =          273.15 + 35.78,
    capFunT =             {-3.474613E-01,4.071500E-01,-3.270717E-02,1.187286E-02,-3.117876E-04,5.854731E-04},
    EIRFunT =             {6.522319E-01,-1.649356E-02,2.777675E-04,3.580800E-03,3.253181E-04,-2.452307E-04},
    EIRFunPLR =           {3.303041E-01,-1.499923E-03,4.911711E-06,3.166646E-01,4.011833E-01,1.242191E-03,0.000000E+00,-4.559734E-02,0.000000E+00,0.000000E+00},
    etaMotor =            1.0) "ReformEIRChiller York YT 960kW/4.64COP/Vanes"
  annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller York YT 960kW/4.64COP/Vanes,  !- Name
    960000,                  !- Reference Capacity {W}
    4.64,                    !- Reference COP {W/W}
    4.44,                    !- Reference Leaving Chilled Water Temperature {C}
    32.01,                   !- Reference Leaving Condenser Water Temperature {C}
    0.03785,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.04732,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller York YT 960kW/4.64COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller York YT 960kW/4.64COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller York YT 960kW/4.64COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.09,                    !- Minimum Part Load Ratio
    1.1,                     !- Maximum Part Load Ratio
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
