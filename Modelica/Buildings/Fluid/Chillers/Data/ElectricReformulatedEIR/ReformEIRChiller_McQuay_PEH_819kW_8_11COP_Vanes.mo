within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_McQuay_PEH_819kW_8_11COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -819300,
    COP_nominal =         8.11,
    PLRMin =              0.09,
    PLRMinUnl =           0.09,
    PLRMax =              1.05,
    mEva_flow_nominal =   1000 * 0.02524,
    mCon_flow_nominal =   1000 * 0.03785,
    TEvaLvg_nominal =     273.15 + 4.44,
    TConLvg_nominal =     273.15 + 18.59,
    TEvaLvgMin =          273.15 + 4.44,
    TEvaLvgMax =          273.15 + 8.89,
    TConLvgMin =          273.15 + 18.51,
    TConLvgMax =          273.15 + 35.07,
    capFunT =             {5.519141E-01,1.393287E-02,-4.818082E-03,3.705684E-02,-1.429769E-03,3.473993E-03},
    EIRFunT =             {4.447588E-01,-3.185710E-02,-8.260575E-04,3.712567E-02,-4.887950E-05,4.978770E-04},
    EIRFunPLR =           {1.038400E-01,1.702895E-02,-1.399515E-05,-9.140769E-03,1.077987E+00,-1.633517E-02,0.000000E+00,-1.811897E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller McQuay PEH 819kW/8.11COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller McQuay PEH 819kW/8.11COP/Vanes,  !- Name
    819300,                  !- Reference Capacity {W}
    8.11,                    !- Reference COP {W/W}
    4.44,                    !- Reference Leaving Chilled Water Temperature {C}
    18.59,                   !- Reference Leaving Condenser Water Temperature {C}
    0.02524,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.03785,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller McQuay PEH 819kW/8.11COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller McQuay PEH 819kW/8.11COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller McQuay PEH 819kW/8.11COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.09,                    !- Minimum Part Load Ratio
    1.05,                    !- Maximum Part Load Ratio
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
