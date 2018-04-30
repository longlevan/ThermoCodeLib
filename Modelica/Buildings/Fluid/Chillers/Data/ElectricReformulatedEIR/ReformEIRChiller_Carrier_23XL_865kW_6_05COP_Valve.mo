within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_Carrier_23XL_865kW_6_05COP_Valve =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -865100,
    COP_nominal =         6.05,
    PLRMin =              0.20,
    PLRMinUnl =           0.20,
    PLRMax =              1.03,
    mEva_flow_nominal =   1000 * 0.03716,
    mCon_flow_nominal =   1000 * 0.04366,
    TEvaLvg_nominal =     273.15 + 4.44,
    TConLvg_nominal =     273.15 + 31.63,
    TEvaLvgMin =          273.15 + 3.33,
    TEvaLvgMax =          273.15 + 7.78,
    TConLvgMin =          273.15 + 16.50,
    TConLvgMax =          273.15 + 35.26,
    capFunT =             {4.094927E-01,-2.603658E-02,-3.192164E-03,3.484958E-02,-6.572290E-04,2.194642E-03},
    EIRFunT =             {5.716056E-01,1.224643E-02,5.618829E-04,-5.486870E-03,7.739394E-04,-1.685380E-03},
    EIRFunPLR =           {-1.633484E-01,2.429348E-02,-1.563508E-05,1.196860E+00,-8.284241E-01,-2.352693E-02,0.000000E+00,7.855871E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller Carrier 23XL 865kW/6.05COP/Valve" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller Carrier 23XL 865kW/6.05COP/Valve,  !- Name
    865100,                  !- Reference Capacity {W}
    6.05,                    !- Reference COP {W/W}
    4.44,                    !- Reference Leaving Chilled Water Temperature {C}
    31.63,                   !- Reference Leaving Condenser Water Temperature {C}
    0.03716,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.04366,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller Carrier 23XL 865kW/6.05COP/Valve CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller Carrier 23XL 865kW/6.05COP/Valve EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller Carrier 23XL 865kW/6.05COP/Valve EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
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
