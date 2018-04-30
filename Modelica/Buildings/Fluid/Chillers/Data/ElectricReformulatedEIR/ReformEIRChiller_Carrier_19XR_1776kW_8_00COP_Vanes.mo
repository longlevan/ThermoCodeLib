within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_Carrier_19XR_1776kW_8_00COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -1775900,
    COP_nominal =         8.00,
    PLRMin =              0.17,
    PLRMinUnl =           0.17,
    PLRMax =              1.03,
    mEva_flow_nominal =   1000 * 0.04757,
    mCon_flow_nominal =   1000 * 0.07003,
    TEvaLvg_nominal =     273.15 + 6.11,
    TConLvg_nominal =     273.15 + 19.60,
    TEvaLvgMin =          273.15 + 6.11,
    TEvaLvgMax =          273.15 + 12.78,
    TConLvgMin =          273.15 + 18.69,
    TConLvgMax =          273.15 + 30.73,
    capFunT =             {-1.221213E-01,-6.119865E-02,-1.798410E-03,1.162623E-01,-3.162366E-03,4.088809E-03},
    EIRFunT =             {7.400829E-01,-2.067083E-02,6.695036E-04,1.727139E-02,2.554481E-04,-7.023159E-04},
    EIRFunPLR =           {8.623059E-01,-3.289272E-02,6.345837E-05,1.416109E-01,2.335827E-01,3.016537E-02,0.000000E+00,-2.083488E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller Carrier 19XR 1776kW/8.00COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller Carrier 19XR 1776kW/8.00COP/Vanes,  !- Name
    1775900,                 !- Reference Capacity {W}
    8.00,                    !- Reference COP {W/W}
    6.11,                    !- Reference Leaving Chilled Water Temperature {C}
    19.60,                   !- Reference Leaving Condenser Water Temperature {C}
    0.04757,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.07003,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller Carrier 19XR 1776kW/8.00COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller Carrier 19XR 1776kW/8.00COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller Carrier 19XR 1776kW/8.00COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.17,                    !- Minimum Part Load Ratio
    1.03,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.17,                    !- Minimum Unloading Ratio
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
