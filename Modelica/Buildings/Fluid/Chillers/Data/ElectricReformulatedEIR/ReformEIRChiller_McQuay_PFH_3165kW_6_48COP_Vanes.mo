within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_McQuay_PFH_3165kW_6_48COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -3165000,
    COP_nominal =         6.48,
    PLRMin =              0.10,
    PLRMinUnl =           0.10,
    PLRMax =              1.03,
    mEva_flow_nominal =   1000 * 0.09085,
    mCon_flow_nominal =   1000 * 0.13627,
    TEvaLvg_nominal =     273.15 + 5.56,
    TConLvg_nominal =     273.15 + 29.19,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 8.89,
    TConLvgMin =          273.15 + 20.90,
    TConLvgMax =          273.15 + 31.43,
    capFunT =             {1.575783E+00,3.340085E-02,-1.294551E-02,-2.136229E-02,-1.076276E-03,7.287288E-03},
    EIRFunT =             {1.176153E+00,2.944151E-02,-1.226585E-02,-3.542539E-02,4.663835E-04,4.521499E-03},
    EIRFunPLR =           {-1.080715E+00,7.856030E-02,-1.461231E-04,1.153308E+00,-1.705463E-01,-7.105856E-02,0.000000E+00,1.002552E+00,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller McQuay PFH 3165kW/6.48COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller McQuay PFH 3165kW/6.48COP/Vanes,  !- Name
    3165000,                 !- Reference Capacity {W}
    6.48,                    !- Reference COP {W/W}
    5.56,                    !- Reference Leaving Chilled Water Temperature {C}
    29.19,                   !- Reference Leaving Condenser Water Temperature {C}
    0.09085,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.13627,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller McQuay PFH 3165kW/6.48COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller McQuay PFH 3165kW/6.48COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller McQuay PFH 3165kW/6.48COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.10,                    !- Minimum Part Load Ratio
    1.03,                    !- Maximum Part Load Ratio
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
