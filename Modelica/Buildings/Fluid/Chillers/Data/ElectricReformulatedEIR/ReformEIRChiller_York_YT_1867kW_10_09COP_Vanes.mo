within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_York_YT_1867kW_10_09COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -1867300,
    COP_nominal =         10.09,
    PLRMin =              0.09,
    PLRMinUnl =           0.09,
    PLRMax =              1.04,
    mEva_flow_nominal =   1000 * 0.07571,
    mCon_flow_nominal =   1000 * 0.09085,
    TEvaLvg_nominal =     273.15 + 7.78,
    TConLvg_nominal =     273.15 + 18.18,
    TEvaLvgMin =          273.15 + 4.44,
    TEvaLvgMax =          273.15 + 8.89,
    TConLvgMin =          273.15 + 17.96,
    TConLvgMax =          273.15 + 39.35,
    capFunT =             {-8.621766E-02,-4.282771E-02,-4.467391E-03,9.890042E-02,-2.768144E-03,5.728215E-03},
    EIRFunT =             {6.584483E-01,1.696214E-02,-3.465522E-03,2.078998E-02,2.909474E-04,-2.222756E-04},
    EIRFunPLR =           {-3.108659E-01,5.639190E-02,-6.487474E-05,-9.450752E-01,2.690004E+00,-5.309347E-02,0.000000E+00,-4.748500E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0) "ReformEIRChiller York YT 1867kW/10.09COP/Vanes"
  annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller York YT 1867kW/10.09COP/Vanes,  !- Name
    1867300,                 !- Reference Capacity {W}
    10.09,                   !- Reference COP {W/W}
    7.78,                    !- Reference Leaving Chilled Water Temperature {C}
    18.18,                   !- Reference Leaving Condenser Water Temperature {C}
    0.07571,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.09085,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller York YT 1867kW/10.09COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller York YT 1867kW/10.09COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller York YT 1867kW/10.09COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.09,                    !- Minimum Part Load Ratio
    1.04,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.09,                    !- Minimum Unloading Ratio
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
