within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_McQuay_PEH_1635kW_7_47COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -1635200,
    COP_nominal =         7.47,
    PLRMin =              0.08,
    PLRMinUnl =           0.08,
    PLRMax =              1.03,
    mEva_flow_nominal =   1000 * 0.04416,
    mCon_flow_nominal =   1000 * 0.06624,
    TEvaLvg_nominal =     273.15 + 4.44,
    TConLvg_nominal =     273.15 + 19.47,
    TEvaLvgMin =          273.15 + 4.44,
    TEvaLvgMax =          273.15 + 8.89,
    TConLvgMin =          273.15 + 19.47,
    TConLvgMax =          273.15 + 34.79,
    capFunT =             {8.307757E-01,-2.169411E-02,-3.184578E-03,2.945840E-02,-1.412831E-03,3.405965E-03},
    EIRFunT =             {1.029659E+00,-6.966329E-02,2.674887E-03,9.677160E-04,5.197288E-04,1.456235E-04},
    EIRFunPLR =           {-6.247932E-02,1.538879E-02,4.295421E-05,6.945495E-01,2.544881E-01,-1.740972E-02,0.000000E+00,1.367965E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller McQuay PEH 1635kW/7.47COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller McQuay PEH 1635kW/7.47COP/Vanes,  !- Name
    1635200,                 !- Reference Capacity {W}
    7.47,                    !- Reference COP {W/W}
    4.44,                    !- Reference Leaving Chilled Water Temperature {C}
    19.47,                   !- Reference Leaving Condenser Water Temperature {C}
    0.04416,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.06624,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller McQuay PEH 1635kW/7.47COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller McQuay PEH 1635kW/7.47COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller McQuay PEH 1635kW/7.47COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.08,                    !- Minimum Part Load Ratio
    1.03,                    !- Maximum Part Load Ratio
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
