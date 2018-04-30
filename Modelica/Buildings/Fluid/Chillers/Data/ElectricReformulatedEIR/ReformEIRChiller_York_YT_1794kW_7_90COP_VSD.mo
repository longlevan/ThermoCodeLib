within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_York_YT_1794kW_7_90COP_VSD =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -1793500,
    COP_nominal =         7.90,
    PLRMin =              0.10,
    PLRMinUnl =           0.10,
    PLRMax =              1.05,
    mEva_flow_nominal =   1000 * 0.05148,
    mCon_flow_nominal =   1000 * 0.09653,
    TEvaLvg_nominal =     273.15 + 7.22,
    TConLvg_nominal =     273.15 + 28.90,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 8.89,
    TConLvgMin =          273.15 + 17.43,
    TConLvgMax =          273.15 + 35.71,
    capFunT =             {7.431766E-01,-1.738759E-01,7.863010E-03,6.780689E-02,-1.636950E-03,3.409649E-03},
    EIRFunT =             {3.622079E-01,-1.249125E-01,5.333823E-03,5.641261E-02,-3.290614E-04,8.180145E-06},
    EIRFunPLR =           {3.828090E-01,-1.598908E-02,-1.273038E-04,5.991790E-01,-5.063099E-01,2.273951E-02,0.000000E+00,4.390985E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0) "ReformEIRChiller York YT 1794kW/7.90COP/VSD"
  annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller York YT 1794kW/7.90COP/VSD,  !- Name
    1793500,                 !- Reference Capacity {W}
    7.90,                    !- Reference COP {W/W}
    7.22,                    !- Reference Leaving Chilled Water Temperature {C}
    28.90,                   !- Reference Leaving Condenser Water Temperature {C}
    0.05148,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.09653,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller York YT 1794kW/7.90COP/VSD CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller York YT 1794kW/7.90COP/VSD EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller York YT 1794kW/7.90COP/VSD EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.10,                    !- Minimum Part Load Ratio
    1.05,                    !- Maximum Part Load Ratio
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
