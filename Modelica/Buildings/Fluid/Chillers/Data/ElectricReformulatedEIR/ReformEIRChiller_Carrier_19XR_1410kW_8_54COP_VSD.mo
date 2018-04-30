within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_Carrier_19XR_1410kW_8_54COP_VSD =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -1410100,
    COP_nominal =         8.54,
    PLRMin =              0.18,
    PLRMinUnl =           0.18,
    PLRMax =              1.03,
    mEva_flow_nominal =   1000 * 0.04,
    mCon_flow_nominal =   1000 * 0.05861,
    TEvaLvg_nominal =     273.15 + 6.11,
    TConLvg_nominal =     273.15 + 19.21,
    TEvaLvgMin =          273.15 + 6.11,
    TEvaLvgMax =          273.15 + 12.78,
    TConLvgMin =          273.15 + 19.05,
    TConLvgMax =          273.15 + 30.63,
    capFunT =             {9.053779E-01,-1.615047E-02,-1.175290E-03,1.318125E-02,-5.919239E-04,1.756836E-03},
    EIRFunT =             {1.074067E+00,-6.702565E-02,3.043272E-04,6.055739E-03,4.615039E-04,3.375766E-04},
    EIRFunPLR =           {-6.984658E-02,2.103714E-02,5.767453E-05,5.267406E-01,6.390076E-01,-2.389231E-02,0.000000E+00,-6.097179E-02,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller Carrier 19XR 1410kW/8.54COP/VSD" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller Carrier 19XR 1410kW/8.54COP/VSD,  !- Name
    1410100,                 !- Reference Capacity {W}
    8.54,                    !- Reference COP {W/W}
    6.11,                    !- Reference Leaving Chilled Water Temperature {C}
    19.21,                   !- Reference Leaving Condenser Water Temperature {C}
    0.04,                    !- Reference Chilled Water Flow Rate {m3/s}
    0.05861,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller Carrier 19XR 1410kW/8.54COP/VSD CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller Carrier 19XR 1410kW/8.54COP/VSD EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller Carrier 19XR 1410kW/8.54COP/VSD EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.18,                    !- Minimum Part Load Ratio
    1.03,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.18,                    !- Minimum Unloading Ratio
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
