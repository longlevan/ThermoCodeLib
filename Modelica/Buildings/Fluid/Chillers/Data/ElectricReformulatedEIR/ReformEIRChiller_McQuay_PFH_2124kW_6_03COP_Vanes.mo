within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_McQuay_PFH_2124kW_6_03COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -2124000,
    COP_nominal =         6.03,
    PLRMin =              0.09,
    PLRMinUnl =           0.09,
    PLRMax =              1.03,
    mEva_flow_nominal =   1000 * 0.05552,
    mCon_flow_nominal =   1000 * 0.07981,
    TEvaLvg_nominal =     273.15 + 8.89,
    TConLvg_nominal =     273.15 + 31.31,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 8.89,
    TConLvgMin =          273.15 + 20.28,
    TConLvgMax =          273.15 + 36.13,
    capFunT =             {8.466662E-01,-3.809647E-02,4.003930E-04,2.913659E-02,-1.138034E-03,2.405293E-03},
    EIRFunT =             {1.198331E+00,-5.731652E-02,-4.950792E-03,-1.013222E-02,-1.112759E-04,4.138878E-03},
    EIRFunPLR =           {-1.353862E+00,9.444334E-02,-1.467992E-05,1.291373E+00,-2.276361E-01,-9.395594E-02,0.000000E+00,1.285196E+00,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller McQuay PFH 2124kW/6.03COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller McQuay PFH 2124kW/6.03COP/Vanes,  !- Name
    2124000,                 !- Reference Capacity {W}
    6.03,                    !- Reference COP {W/W}
    8.89,                    !- Reference Leaving Chilled Water Temperature {C}
    31.31,                   !- Reference Leaving Condenser Water Temperature {C}
    0.05552,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.07981,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller McQuay PFH 2124kW/6.03COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller McQuay PFH 2124kW/6.03COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller McQuay PFH 2124kW/6.03COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.09,                    !- Minimum Part Load Ratio
    1.03,                    !- Maximum Part Load Ratio
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
