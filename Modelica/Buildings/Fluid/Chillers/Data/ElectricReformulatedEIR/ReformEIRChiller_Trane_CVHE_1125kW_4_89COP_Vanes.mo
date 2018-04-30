within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_Trane_CVHE_1125kW_4_89COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -1125300,
    COP_nominal =         4.89,
    PLRMin =              0.10,
    PLRMinUnl =           0.10,
    PLRMax =              1.01,
    mEva_flow_nominal =   1000 * 0.02776,
    mCon_flow_nominal =   1000 * 0.02618,
    TEvaLvg_nominal =     273.15 + 5.56,
    TConLvg_nominal =     273.15 + 36.27,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 10.00,
    TConLvgMin =          273.15 + 26.10,
    TConLvgMax =          273.15 + 36.56,
    capFunT =             {3.738655E-01,-1.966419E-02,-1.212112E-03,3.549468E-02,-5.800042E-04,1.250514E-03},
    EIRFunT =             {4.744658E-01,-3.998991E-02,-8.170569E-05,1.686296E-02,8.315397E-05,1.607491E-04},
    EIRFunPLR =           {3.526188E-01,-2.052741E-03,5.127782E-06,-3.558764E-01,1.168571E+00,1.752891E-03,0.000000E+00,-1.609826E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller Trane CVHE 1125kW/4.89COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller Trane CVHE 1125kW/4.89COP/Vanes,  !- Name
    1125300,                 !- Reference Capacity {W}
    4.89,                    !- Reference COP {W/W}
    5.56,                    !- Reference Leaving Chilled Water Temperature {C}
    36.27,                   !- Reference Leaving Condenser Water Temperature {C}
    0.02776,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.02618,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller Trane CVHE 1125kW/4.89COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller Trane CVHE 1125kW/4.89COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller Trane CVHE 1125kW/4.89COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.10,                    !- Minimum Part Load Ratio
    1.01,                    !- Maximum Part Load Ratio
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
