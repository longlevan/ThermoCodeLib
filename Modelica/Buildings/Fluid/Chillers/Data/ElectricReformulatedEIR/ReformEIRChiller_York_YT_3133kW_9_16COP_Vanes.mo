within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_York_YT_3133kW_9_16COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -3133300,
    COP_nominal =         9.16,
    PLRMin =              0.07,
    PLRMinUnl =           0.07,
    PLRMax =              1.04,
    mEva_flow_nominal =   1000 * 0.08076,
    mCon_flow_nominal =   1000 * 0.12618,
    TEvaLvg_nominal =     273.15 + 5.56,
    TConLvg_nominal =     273.15 + 19.37,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 8.89,
    TConLvgMin =          273.15 + 19.37,
    TConLvgMax =          273.15 + 35.91,
    capFunT =             {6.112157E-01,-1.430728E-02,9.823748E-05,3.293543E-02,-1.221859E-03,2.659301E-03},
    EIRFunT =             {8.749714E-01,-2.881975E-02,2.003695E-03,7.313755E-03,5.578288E-04,-1.170615E-03},
    EIRFunPLR =           {3.389568E-01,-1.864923E-02,3.548361E-04,1.107404E+00,-5.912797E-01,-4.559304E-04,0.000000E+00,3.910858E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0) "ReformEIRChiller York YT 3133kW/9.16COP/Vanes"
  annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller York YT 3133kW/9.16COP/Vanes,  !- Name
    3133300,                 !- Reference Capacity {W}
    9.16,                    !- Reference COP {W/W}
    5.56,                    !- Reference Leaving Chilled Water Temperature {C}
    19.37,                   !- Reference Leaving Condenser Water Temperature {C}
    0.08076,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.12618,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller York YT 3133kW/9.16COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller York YT 3133kW/9.16COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller York YT 3133kW/9.16COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.07,                    !- Minimum Part Load Ratio
    1.04,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.07,                    !- Minimum Unloading Ratio
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
