within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_McQuay_WSC_1751kW_6_73COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -1751300,
    COP_nominal =         6.73,
    PLRMin =              0.10,
    PLRMinUnl =           0.10,
    PLRMax =              1.07,
    mEva_flow_nominal =   1000 * 0.04145,
    mCon_flow_nominal =   1000 * 0.09337,
    TEvaLvg_nominal =     273.15 + 8.89,
    TConLvg_nominal =     273.15 + 31.82,
    TEvaLvgMin =          273.15 + 7.22,
    TEvaLvgMax =          273.15 + 12.78,
    TConLvgMin =          273.15 + 19.25,
    TConLvgMax =          273.15 + 32.66,
    capFunT =             {6.997155E-01,1.013018E-01,-5.069597E-03,1.512092E-02,-9.198614E-04,1.134806E-03},
    EIRFunT =             {9.968396E-01,2.738711E-02,-1.295424E-03,-2.546976E-02,9.706321E-04,-9.771396E-04},
    EIRFunPLR =           {-4.199061E-01,3.348162E-02,-3.463872E-06,1.370150E+00,-1.116699E+00,-3.393707E-02,0.000000E+00,1.177655E+00,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller McQuay WSC 1751kW/6.73COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller McQuay WSC 1751kW/6.73COP/Vanes,  !- Name
    1751300,                 !- Reference Capacity {W}
    6.73,                    !- Reference COP {W/W}
    8.89,                    !- Reference Leaving Chilled Water Temperature {C}
    31.82,                   !- Reference Leaving Condenser Water Temperature {C}
    0.04145,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.09337,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller McQuay WSC 1751kW/6.73COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller McQuay WSC 1751kW/6.73COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller McQuay WSC 1751kW/6.73COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.10,                    !- Minimum Part Load Ratio
    1.07,                    !- Maximum Part Load Ratio
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
