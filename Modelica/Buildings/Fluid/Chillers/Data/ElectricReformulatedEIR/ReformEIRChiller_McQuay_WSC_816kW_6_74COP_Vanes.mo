within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_McQuay_WSC_816kW_6_74COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -815800,
    COP_nominal =         6.74,
    PLRMin =              0.09,
    PLRMinUnl =           0.09,
    PLRMax =              1.03,
    mEva_flow_nominal =   1000 * 0.01748,
    mCon_flow_nominal =   1000 * 0.04164,
    TEvaLvg_nominal =     273.15 + 8.89,
    TConLvg_nominal =     273.15 + 32.05,
    TEvaLvgMin =          273.15 + 7.22,
    TEvaLvgMax =          273.15 + 12.78,
    TConLvgMin =          273.15 + 19.41,
    TConLvgMax =          273.15 + 33.45,
    capFunT =             {9.237537E-01,1.013316E-02,-6.564312E-03,2.744234E-02,-2.183256E-03,6.537972E-03},
    EIRFunT =             {7.251890E-01,-1.477434E-02,-3.174328E-03,4.035136E-03,-6.105556E-05,2.003152E-03},
    EIRFunPLR =           {5.166838E-01,-1.114911E-02,7.372985E-05,-7.182393E-02,8.180601E-01,7.638243E-03,0.000000E+00,-2.216516E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller McQuay WSC 816kW/6.74COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller McQuay WSC 816kW/6.74COP/Vanes,  !- Name
    815800,                  !- Reference Capacity {W}
    6.74,                    !- Reference COP {W/W}
    8.89,                    !- Reference Leaving Chilled Water Temperature {C}
    32.05,                   !- Reference Leaving Condenser Water Temperature {C}
    0.01748,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.04164,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller McQuay WSC 816kW/6.74COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller McQuay WSC 816kW/6.74COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller McQuay WSC 816kW/6.74COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
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
