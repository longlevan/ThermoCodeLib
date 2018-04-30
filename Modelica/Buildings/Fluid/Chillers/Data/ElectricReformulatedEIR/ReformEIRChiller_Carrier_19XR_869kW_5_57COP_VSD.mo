within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_Carrier_19XR_869kW_5_57COP_VSD =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -868600,
    COP_nominal =         5.57,
    PLRMin =              0.18,
    PLRMinUnl =           0.18,
    PLRMax =              1.03,
    mEva_flow_nominal =   1000 * 0.01754,
    mCon_flow_nominal =   1000 * 0.02593,
    TEvaLvg_nominal =     273.15 + 8.89,
    TConLvg_nominal =     273.15 + 36.12,
    TEvaLvgMin =          273.15 + 7.22,
    TEvaLvgMax =          273.15 + 12.78,
    TConLvgMin =          273.15 + 22.63,
    TConLvgMax =          273.15 + 36.94,
    capFunT =             {5.989856E-01,1.069929E-01,-8.442248E-03,-1.622083E-03,-4.384385E-04,2.372388E-03},
    EIRFunT =             {5.173193E-01,7.303695E-02,-7.486318E-03,-2.613352E-03,1.000039E-04,1.264598E-03},
    EIRFunPLR =           {1.317677E-01,-7.501960E-03,5.073000E-06,8.550743E-01,-6.215987E-01,7.267902E-03,0.000000E+00,6.373549E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller Carrier 19XR 869kW/5.57COP/VSD" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller Carrier 19XR 869kW/5.57COP/VSD,  !- Name
    868600,                  !- Reference Capacity {W}
    5.57,                    !- Reference COP {W/W}
    8.89,                    !- Reference Leaving Chilled Water Temperature {C}
    36.12,                   !- Reference Leaving Condenser Water Temperature {C}
    0.01754,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.02593,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller Carrier 19XR 869kW/5.57COP/VSD CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller Carrier 19XR 869kW/5.57COP/VSD EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller Carrier 19XR 869kW/5.57COP/VSD EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
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
