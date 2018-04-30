within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_Carrier_19XR_742kW_5_42COP_VSD =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -742000,
    COP_nominal =         5.42,
    PLRMin =              0.19,
    PLRMinUnl =           0.19,
    PLRMax =              1.02,
    mEva_flow_nominal =   1000 * 0.01779,
    mCon_flow_nominal =   1000 * 0.01956,
    TEvaLvg_nominal =     273.15 + 5.56,
    TConLvg_nominal =     273.15 + 31.86,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 10.00,
    TConLvgMin =          273.15 + 22.11,
    TConLvgMax =          273.15 + 34.90,
    capFunT =             {7.769438E-01,-2.149731E-02,-1.080097E-03,2.754266E-02,-7.938947E-04,1.666375E-03},
    EIRFunT =             {1.131963E+00,-4.201196E-02,7.571267E-04,-2.042484E-02,7.676570E-04,-2.753302E-04},
    EIRFunPLR =           {4.301853E-02,1.740092E-02,-2.733344E-05,-5.445504E-01,2.155307E+00,-1.600200E-02,0.000000E+00,-6.716912E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller Carrier 19XR 742kW/5.42COP/VSD" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller Carrier 19XR 742kW/5.42COP/VSD,  !- Name
    742000,                  !- Reference Capacity {W}
    5.42,                    !- Reference COP {W/W}
    5.56,                    !- Reference Leaving Chilled Water Temperature {C}
    31.86,                   !- Reference Leaving Condenser Water Temperature {C}
    0.01779,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.01956,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller Carrier 19XR 742kW/5.42COP/VSD CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller Carrier 19XR 742kW/5.42COP/VSD EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller Carrier 19XR 742kW/5.42COP/VSD EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.19,                    !- Minimum Part Load Ratio
    1.02,                    !- Maximum Part Load Ratio
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
