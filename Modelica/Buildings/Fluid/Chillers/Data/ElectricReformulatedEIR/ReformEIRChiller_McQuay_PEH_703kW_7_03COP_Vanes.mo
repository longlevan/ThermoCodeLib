within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_McQuay_PEH_703kW_7_03COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -703300,
    COP_nominal =         7.03,
    PLRMin =              0.10,
    PLRMinUnl =           0.10,
    PLRMax =              1.02,
    mEva_flow_nominal =   1000 * 0.02019,
    mCon_flow_nominal =   1000 * 0.02902,
    TEvaLvg_nominal =     273.15 + 5.56,
    TConLvg_nominal =     273.15 + 29.40,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 8.89,
    TConLvgMin =          273.15 + 20.28,
    TConLvgMax =          273.15 + 31.25,
    capFunT =             {-1.336180E-01,6.473161E-02,-1.240446E-02,9.425649E-02,-2.958871E-03,5.765503E-03},
    EIRFunT =             {8.177961E-01,-1.756394E-01,2.510719E-03,2.677783E-02,-4.926551E-04,4.559008E-03},
    EIRFunPLR =           {2.342644E+00,-1.060883E-01,2.710155E-04,-2.289108E+00,3.338339E+00,9.221626E-02,0.000000E+00,-2.217954E+00,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller McQuay PEH 703kW/7.03COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller McQuay PEH 703kW/7.03COP/Vanes,  !- Name
    703300,                  !- Reference Capacity {W}
    7.03,                    !- Reference COP {W/W}
    5.56,                    !- Reference Leaving Chilled Water Temperature {C}
    29.40,                   !- Reference Leaving Condenser Water Temperature {C}
    0.02019,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.02902,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller McQuay PEH 703kW/7.03COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller McQuay PEH 703kW/7.03COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller McQuay PEH 703kW/7.03COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.10,                    !- Minimum Part Load Ratio
    1.02,                    !- Maximum Part Load Ratio
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
