within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_Trane_RTHC_1066kW_5_73COP_Valve =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -1065500,
    COP_nominal =         5.73,
    PLRMin =              0.30,
    PLRMinUnl =           0.30,
    PLRMax =              1.01,
    mEva_flow_nominal =   1000 * 0.05142,
    mCon_flow_nominal =   1000 * 0.04416,
    TEvaLvg_nominal =     273.15 + 5.56,
    TConLvg_nominal =     273.15 + 32.06,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 10.00,
    TConLvgMin =          273.15 + 27.08,
    TConLvgMax =          273.15 + 33.00,
    capFunT =             {1.132006E+00,5.350322E-02,4.674089E-04,-9.696767E-03,-1.092622E-05,-6.864058E-04},
    EIRFunT =             {1.270619E+00,2.714576E-02,1.314069E-03,-7.074240E-02,2.188506E-03,-2.478095E-03},
    EIRFunPLR =           {-5.639468E-01,3.938489E-02,1.732511E-04,1.260815E+00,8.111637E-01,-4.893450E-02,0.000000E+00,-3.768289E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller Trane RTHC 1066kW/5.73COP/Valve" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller Trane RTHC 1066kW/5.73COP/Valve,  !- Name
    1065500,                 !- Reference Capacity {W}
    5.73,                    !- Reference COP {W/W}
    5.56,                    !- Reference Leaving Chilled Water Temperature {C}
    32.06,                   !- Reference Leaving Condenser Water Temperature {C}
    0.05142,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.04416,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller Trane RTHC 1066kW/5.73COP/Valve CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller Trane RTHC 1066kW/5.73COP/Valve EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller Trane RTHC 1066kW/5.73COP/Valve EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.30,                    !- Minimum Part Load Ratio
    1.01,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.30,                    !- Minimum Unloading Ratio
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
