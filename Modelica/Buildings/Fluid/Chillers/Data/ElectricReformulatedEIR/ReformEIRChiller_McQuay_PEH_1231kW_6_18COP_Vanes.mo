within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_McQuay_PEH_1231kW_6_18COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -1230800,
    COP_nominal =         6.18,
    PLRMin =              0.10,
    PLRMinUnl =           0.10,
    PLRMax =              1.03,
    mEva_flow_nominal =   1000 * 0.03533,
    mCon_flow_nominal =   1000 * 0.0511,
    TEvaLvg_nominal =     273.15 + 5.56,
    TConLvg_nominal =     273.15 + 29.47,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 8.89,
    TConLvgMin =          273.15 + 20.98,
    TConLvgMax =          273.15 + 31.25,
    capFunT =             {1.253381E+00,8.875124E-02,-8.323384E-03,-1.024474E-02,-6.751294E-04,2.456063E-03},
    EIRFunT =             {8.880010E-01,-9.202757E-03,-5.021594E-03,-9.074393E-03,2.554841E-04,2.313326E-03},
    EIRFunPLR =           {1.651794E-01,-3.089335E-03,2.301100E-04,1.104907E+00,-8.157905E-01,-8.477359E-03,0.000000E+00,6.893449E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller McQuay PEH 1231kW/6.18COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller McQuay PEH 1231kW/6.18COP/Vanes,  !- Name
    1230800,                 !- Reference Capacity {W}
    6.18,                    !- Reference COP {W/W}
    5.56,                    !- Reference Leaving Chilled Water Temperature {C}
    29.47,                   !- Reference Leaving Condenser Water Temperature {C}
    0.03533,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.0511,                  !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller McQuay PEH 1231kW/6.18COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller McQuay PEH 1231kW/6.18COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller McQuay PEH 1231kW/6.18COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.10,                    !- Minimum Part Load Ratio
    1.03,                    !- Maximum Part Load Ratio
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
