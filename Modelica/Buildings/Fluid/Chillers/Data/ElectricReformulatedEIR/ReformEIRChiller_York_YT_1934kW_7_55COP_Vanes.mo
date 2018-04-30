within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_York_YT_1934kW_7_55COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -1934100,
    COP_nominal =         7.55,
    PLRMin =              0.10,
    PLRMinUnl =           0.10,
    PLRMax =              1.06,
    mEva_flow_nominal =   1000 * 0.05552,
    mCon_flow_nominal =   1000 * 0.08675,
    TEvaLvg_nominal =     273.15 + 5.56,
    TConLvg_nominal =     273.15 + 19.93,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 8.89,
    TConLvgMin =          273.15 + 19.55,
    TConLvgMax =          273.15 + 35.11,
    capFunT =             {-8.034452E-01,5.620880E-02,-1.066333E-03,1.377705E-01,-3.123388E-03,1.042684E-03},
    EIRFunT =             {1.464148E+00,-1.335550E-01,4.793466E-03,-2.069042E-02,6.523211E-04,1.245111E-03},
    EIRFunPLR =           {7.339218E-01,-3.184317E-02,-9.387398E-05,-2.274806E-01,1.677164E+00,3.688705E-02,0.000000E+00,-1.250228E+00,0.000000E+00,0.000000E+00},
    etaMotor =            1.0) "ReformEIRChiller York YT 1934kW/7.55COP/Vanes"
  annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller York YT 1934kW/7.55COP/Vanes,  !- Name
    1934100,                 !- Reference Capacity {W}
    7.55,                    !- Reference COP {W/W}
    5.56,                    !- Reference Leaving Chilled Water Temperature {C}
    19.93,                   !- Reference Leaving Condenser Water Temperature {C}
    0.05552,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.08675,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller York YT 1934kW/7.55COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller York YT 1934kW/7.55COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller York YT 1934kW/7.55COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.10,                    !- Minimum Part Load Ratio
    1.06,                    !- Maximum Part Load Ratio
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
