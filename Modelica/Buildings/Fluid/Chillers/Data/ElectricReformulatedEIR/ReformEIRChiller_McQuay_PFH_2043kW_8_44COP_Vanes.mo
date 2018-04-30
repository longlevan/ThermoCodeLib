within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_McQuay_PFH_2043kW_8_44COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -2043100,
    COP_nominal =         8.44,
    PLRMin =              0.08,
    PLRMinUnl =           0.08,
    PLRMax =              1.02,
    mEva_flow_nominal =   1000 * 0.04757,
    mCon_flow_nominal =   1000 * 0.06814,
    TEvaLvg_nominal =     273.15 + 6.11,
    TConLvg_nominal =     273.15 + 20.80,
    TEvaLvgMin =          273.15 + 6.11,
    TEvaLvgMax =          273.15 + 12.78,
    TConLvgMin =          273.15 + 20.80,
    TConLvgMax =          273.15 + 32.72,
    capFunT =             {7.565419E-01,1.690707E-02,-3.988252E-03,2.008625E-02,-1.439363E-03,3.931271E-03},
    EIRFunT =             {6.806067E-01,5.701621E-03,-1.329020E-03,1.210419E-02,2.563048E-04,-2.528032E-04},
    EIRFunPLR =           {-7.300240E-01,6.016914E-02,2.516862E-05,1.606362E-01,1.803623E+00,-6.158982E-02,0.000000E+00,-2.149832E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller McQuay PFH 2043kW/8.44COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller McQuay PFH 2043kW/8.44COP/Vanes,  !- Name
    2043100,                 !- Reference Capacity {W}
    8.44,                    !- Reference COP {W/W}
    6.11,                    !- Reference Leaving Chilled Water Temperature {C}
    20.80,                   !- Reference Leaving Condenser Water Temperature {C}
    0.04757,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.06814,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller McQuay PFH 2043kW/8.44COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller McQuay PFH 2043kW/8.44COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller McQuay PFH 2043kW/8.44COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
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
