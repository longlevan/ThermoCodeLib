within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_McQuay_PEH_1104kW_8_00COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -1104200,
    COP_nominal =         8.00,
    PLRMin =              0.08,
    PLRMinUnl =           0.08,
    PLRMax =              1.03,
    mEva_flow_nominal =   1000 * 0.02423,
    mCon_flow_nominal =   1000 * 0.03028,
    TEvaLvg_nominal =     273.15 + 6.67,
    TConLvg_nominal =     273.15 + 22.59,
    TEvaLvgMin =          273.15 + 6.67,
    TEvaLvgMax =          273.15 + 12.22,
    TConLvgMin =          273.15 + 22.59,
    TConLvgMax =          273.15 + 34.29,
    capFunT =             {7.757836E-01,1.723720E-02,-2.761789E-03,1.560171E-02,-1.133168E-03,3.042701E-03},
    EIRFunT =             {7.355874E-01,-1.291195E-02,-1.168928E-03,1.454443E-02,-4.975714E-06,4.941841E-04},
    EIRFunPLR =           {2.216357E-01,6.972382E-03,5.022616E-05,-3.939145E-02,9.582611E-01,-9.691500E-03,0.000000E+00,-1.039758E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller McQuay PEH 1104kW/8.00COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller McQuay PEH 1104kW/8.00COP/Vanes,  !- Name
    1104200,                 !- Reference Capacity {W}
    8.00,                    !- Reference COP {W/W}
    6.67,                    !- Reference Leaving Chilled Water Temperature {C}
    22.59,                   !- Reference Leaving Condenser Water Temperature {C}
    0.02423,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.03028,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller McQuay PEH 1104kW/8.00COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller McQuay PEH 1104kW/8.00COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller McQuay PEH 1104kW/8.00COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.08,                    !- Minimum Part Load Ratio
    1.03,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.08,                    !- Minimum Unloading Ratio
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
