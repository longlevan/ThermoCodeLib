within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_York_YK_5465kW_6_94COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -5464900,
    COP_nominal =         6.94,
    PLRMin =              0.14,
    PLRMinUnl =           0.14,
    PLRMax =              1.06,
    mEva_flow_nominal =   1000 * 0.18296,
    mCon_flow_nominal =   1000 * 0.27444,
    TEvaLvg_nominal =     273.15 + 6.67,
    TConLvg_nominal =     273.15 + 31.56,
    TEvaLvgMin =          273.15 + 4.44,
    TEvaLvgMax =          273.15 + 8.89,
    TConLvgMin =          273.15 + 21.03,
    TConLvgMax =          273.15 + 34.99,
    capFunT =             {-1.004987E+00,-2.020843E-01,-5.768143E-03,2.096972E-01,-5.537991E-03,1.195948E-02},
    EIRFunT =             {5.844853E-01,-4.786810E-02,7.315110E-04,2.167930E-02,-8.850313E-05,5.184829E-04},
    EIRFunPLR =           {8.903067E-01,-1.058205E-03,4.591261E-05,-2.096863E+00,3.368956E+00,-1.380690E-03,0.000000E+00,-1.130250E+00,0.000000E+00,0.000000E+00},
    etaMotor =            1.0) "ReformEIRChiller York YK 5465kW/6.94COP/Vanes"
  annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller York YK 5465kW/6.94COP/Vanes,  !- Name
    5464900,                 !- Reference Capacity {W}
    6.94,                    !- Reference COP {W/W}
    6.67,                    !- Reference Leaving Chilled Water Temperature {C}
    31.56,                   !- Reference Leaving Condenser Water Temperature {C}
    0.18296,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.27444,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller York YK 5465kW/6.94COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller York YK 5465kW/6.94COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller York YK 5465kW/6.94COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.14,                    !- Minimum Part Load Ratio
    1.06,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.14,                    !- Minimum Unloading Ratio
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
