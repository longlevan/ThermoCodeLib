within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_York_YT_1459kW_6_40COP_VSD =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -1459400,
    COP_nominal =         6.40,
    PLRMin =              0.10,
    PLRMinUnl =           0.10,
    PLRMax =              1.17,
    mEva_flow_nominal =   1000 * 0.05047,
    mCon_flow_nominal =   1000 * 0.05047,
    TEvaLvg_nominal =     273.15 + 5.56,
    TConLvg_nominal =     273.15 + 31.89,
    TEvaLvgMin =          273.15 + 4.44,
    TEvaLvgMax =          273.15 + 8.89,
    TConLvgMin =          273.15 + 21.15,
    TConLvgMax =          273.15 + 37.17,
    capFunT =             {-1.194034E+00,2.466392E-01,-1.770803E-02,1.203228E-01,-2.570051E-03,8.497187E-04},
    EIRFunT =             {-6.559788E-02,4.189764E-02,-9.367876E-03,4.551296E-02,-5.411967E-04,1.453585E-03},
    EIRFunPLR =           {-1.614787E-01,6.417258E-02,1.317124E-05,-2.149029E+00,4.405653E+00,-6.621165E-02,0.000000E+00,-1.055839E+00,0.000000E+00,0.000000E+00},
    etaMotor =            1.0) "ReformEIRChiller York YT 1459kW/6.40COP/VSD"
  annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller York YT 1459kW/6.40COP/VSD,  !- Name
    1459400,                 !- Reference Capacity {W}
    6.40,                    !- Reference COP {W/W}
    5.56,                    !- Reference Leaving Chilled Water Temperature {C}
    31.89,                   !- Reference Leaving Condenser Water Temperature {C}
    0.05047,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.05047,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller York YT 1459kW/6.40COP/VSD CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller York YT 1459kW/6.40COP/VSD EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller York YT 1459kW/6.40COP/VSD EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.10,                    !- Minimum Part Load Ratio
    1.17,                    !- Maximum Part Load Ratio
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
