within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_York_YK_4477kW_6_64COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -4476700,
    COP_nominal =         6.64,
    PLRMin =              0.41,
    PLRMinUnl =           0.41,
    PLRMax =              1.06,
    mEva_flow_nominal =   1000 * 0.19558,
    mCon_flow_nominal =   1000 * 0.24605,
    TEvaLvg_nominal =     273.15 + 6.67,
    TConLvg_nominal =     273.15 + 31.67,
    TEvaLvgMin =          273.15 + 4.44,
    TEvaLvgMax =          273.15 + 7.78,
    TConLvgMin =          273.15 + 18.50,
    TConLvgMax =          273.15 + 31.67,
    capFunT =             {-5.612561E-01,-2.094117E-01,-8.555483E-03,2.050690E-01,-6.451488E-03,1.561052E-02},
    EIRFunT =             {1.597687E-01,-3.513678E-02,-2.666547E-03,5.561175E-02,-9.273482E-04,1.559350E-03},
    EIRFunPLR =           {6.263474E-01,-1.468760E-02,2.187947E-04,-4.940077E-01,1.448597E+00,4.085582E-03,0.000000E+00,-4.576722E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0) "ReformEIRChiller York YK 4477kW/6.64COP/Vanes"
  annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller York YK 4477kW/6.64COP/Vanes,  !- Name
    4476700,                 !- Reference Capacity {W}
    6.64,                    !- Reference COP {W/W}
    6.67,                    !- Reference Leaving Chilled Water Temperature {C}
    31.67,                   !- Reference Leaving Condenser Water Temperature {C}
    0.19558,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.24605,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller York YK 4477kW/6.64COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller York YK 4477kW/6.64COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller York YK 4477kW/6.64COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.41,                    !- Minimum Part Load Ratio
    1.06,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.41,                    !- Minimum Unloading Ratio
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
