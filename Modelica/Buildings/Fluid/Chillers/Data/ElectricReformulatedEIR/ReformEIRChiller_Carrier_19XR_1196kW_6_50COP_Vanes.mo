within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_Carrier_19XR_1196kW_6_50COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -1195600,
    COP_nominal =         6.50,
    PLRMin =              0.20,
    PLRMinUnl =           0.20,
    PLRMax =              1.03,
    mEva_flow_nominal =   1000 * 0.03426,
    mCon_flow_nominal =   1000 * 0.04252,
    TEvaLvg_nominal =     273.15 + 7.22,
    TConLvg_nominal =     273.15 + 31.65,
    TEvaLvgMin =          273.15 + 6.67,
    TEvaLvgMax =          273.15 + 12.22,
    TConLvgMin =          273.15 + 21.72,
    TConLvgMax =          273.15 + 33.03,
    capFunT =             {1.006647E+00,-3.596242E-02,-2.549306E-03,2.690324E-02,-1.255051E-03,3.669880E-03},
    EIRFunT =             {1.001094E+00,-1.641469E-02,3.314844E-04,-1.095655E-02,5.687863E-04,-4.694134E-04},
    EIRFunPLR =           {1.659565E-01,2.824668E-03,-4.941235E-05,9.544016E-01,-7.843794E-01,-1.991887E-04,0.000000E+00,6.294448E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller Carrier 19XR 1196kW/6.50COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller Carrier 19XR 1196kW/6.50COP/Vanes,  !- Name
    1195600,                 !- Reference Capacity {W}
    6.50,                    !- Reference COP {W/W}
    7.22,                    !- Reference Leaving Chilled Water Temperature {C}
    31.65,                   !- Reference Leaving Condenser Water Temperature {C}
    0.03426,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.04252,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller Carrier 19XR 1196kW/6.50COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller Carrier 19XR 1196kW/6.50COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller Carrier 19XR 1196kW/6.50COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.20,                    !- Minimum Part Load Ratio
    1.03,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.20,                    !- Minimum Unloading Ratio
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
