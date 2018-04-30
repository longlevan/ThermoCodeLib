within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_McQuay_PEH_1030kW_8_58COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -1030300,
    COP_nominal =         8.58,
    PLRMin =              0.08,
    PLRMinUnl =           0.08,
    PLRMax =              1.02,
    mEva_flow_nominal =   1000 * 0.02378,
    mCon_flow_nominal =   1000 * 0.03407,
    TEvaLvg_nominal =     273.15 + 6.11,
    TConLvg_nominal =     273.15 + 20.86,
    TEvaLvgMin =          273.15 + 6.11,
    TEvaLvgMax =          273.15 + 12.78,
    TConLvgMin =          273.15 + 20.86,
    TConLvgMax =          273.15 + 32.69,
    capFunT =             {6.367679E-01,2.637864E-02,-4.503997E-03,2.614644E-02,-1.509627E-03,3.809305E-03},
    EIRFunT =             {5.347930E-01,-1.901560E-03,-1.999168E-03,2.601989E-02,-1.174414E-04,4.209479E-04},
    EIRFunPLR =           {3.869427E-01,-1.316341E-03,4.231383E-05,-9.777673E-02,8.539824E-01,-7.526877E-04,0.000000E+00,-1.180591E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller McQuay PEH 1030kW/8.58COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller McQuay PEH 1030kW/8.58COP/Vanes,  !- Name
    1030300,                 !- Reference Capacity {W}
    8.58,                    !- Reference COP {W/W}
    6.11,                    !- Reference Leaving Chilled Water Temperature {C}
    20.86,                   !- Reference Leaving Condenser Water Temperature {C}
    0.02378,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.03407,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller McQuay PEH 1030kW/8.58COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller McQuay PEH 1030kW/8.58COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller McQuay PEH 1030kW/8.58COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.08,                    !- Minimum Part Load Ratio
    1.02,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.08,                    !- Minimum Unloading Ratio
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
