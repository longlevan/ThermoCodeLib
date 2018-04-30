within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_Carrier_23XL_724kW_6_04COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -724400,
    COP_nominal =         6.04,
    PLRMin =              0.19,
    PLRMinUnl =           0.19,
    PLRMax =              1.03,
    mEva_flow_nominal =   1000 * 0.01779,
    mCon_flow_nominal =   1000 * 0.01956,
    TEvaLvg_nominal =     273.15 + 5.56,
    TConLvg_nominal =     273.15 + 31.44,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 10.00,
    TConLvgMin =          273.15 + 22.12,
    TConLvgMax =          273.15 + 35.40,
    capFunT =             {-1.116010E-01,-1.058351E-01,-1.829692E-03,9.677921E-02,-2.169221E-03,4.998660E-03},
    EIRFunT =             {5.899136E-01,1.976846E-02,8.755088E-04,-7.564222E-03,8.775130E-04,-2.036856E-03},
    EIRFunPLR =           {3.645490E-01,2.732140E-03,-5.356774E-05,1.212025E-01,5.491750E-01,2.083941E-04,0.000000E+00,-7.516191E-02,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller Carrier 23XL 724kW/6.04COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller Carrier 23XL 724kW/6.04COP/Vanes,  !- Name
    724400,                  !- Reference Capacity {W}
    6.04,                    !- Reference COP {W/W}
    5.56,                    !- Reference Leaving Chilled Water Temperature {C}
    31.44,                   !- Reference Leaving Condenser Water Temperature {C}
    0.01779,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.01956,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller Carrier 23XL 724kW/6.04COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller Carrier 23XL 724kW/6.04COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller Carrier 23XL 724kW/6.04COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.19,                    !- Minimum Part Load Ratio
    1.03,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.19,                    !- Minimum Unloading Ratio
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
