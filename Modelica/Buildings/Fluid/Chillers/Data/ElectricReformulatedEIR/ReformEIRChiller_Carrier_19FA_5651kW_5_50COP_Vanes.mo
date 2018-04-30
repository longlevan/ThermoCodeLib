within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_Carrier_19FA_5651kW_5_50COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -5651300,
    COP_nominal =         5.50,
    PLRMin =              0.19,
    PLRMinUnl =           0.19,
    PLRMax =              1.03,
    mEva_flow_nominal =   1000 * 0.18927,
    mCon_flow_nominal =   1000 * 0.18927,
    TEvaLvg_nominal =     273.15 + 6.67,
    TConLvg_nominal =     273.15 + 37.89,
    TEvaLvgMin =          273.15 + 4.44,
    TEvaLvgMax =          273.15 + 8.89,
    TConLvgMin =          273.15 + 26.23,
    TConLvgMax =          273.15 + 39.12,
    capFunT =             {9.205097E-01,-7.830750E-02,-4.545053E-03,5.853135E-02,-2.108693E-03,6.359267E-03},
    EIRFunT =             {8.804871E-01,3.853907E-04,2.224949E-04,-1.337560E-02,5.822842E-04,-8.744742E-04},
    EIRFunPLR =           {-1.360532E-01,8.642703E-03,3.855583E-06,1.024034E+00,6.047444E-02,-8.947860E-03,0.000000E+00,5.706602E-02,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller Carrier 19FA 5651kW/5.50COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller Carrier 19FA 5651kW/5.50COP/Vanes,  !- Name
    5651300,                 !- Reference Capacity {W}
    5.50,                    !- Reference COP {W/W}
    6.67,                    !- Reference Leaving Chilled Water Temperature {C}
    37.89,                   !- Reference Leaving Condenser Water Temperature {C}
    0.18927,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.18927,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller Carrier 19FA 5651kW/5.50COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller Carrier 19FA 5651kW/5.50COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller Carrier 19FA 5651kW/5.50COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
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
