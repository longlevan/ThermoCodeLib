within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_Trane_CVHF_1758kW_6_87COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -1758300,
    COP_nominal =         6.87,
    PLRMin =              0.20,
    PLRMinUnl =           0.20,
    PLRMax =              1.03,
    mEva_flow_nominal =   1000 * 0.06309,
    mCon_flow_nominal =   1000 * 0.06309,
    TEvaLvg_nominal =     273.15 + 5.56,
    TConLvg_nominal =     273.15 + 32.08,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 10.00,
    TConLvgMin =          273.15 + 20.44,
    TConLvgMax =          273.15 + 32.98,
    capFunT =             {7.950124E-01,3.170632E-02,-5.547610E-04,4.268492E-03,-1.289046E-04,4.509069E-04},
    EIRFunT =             {6.428117E-01,1.299499E-02,5.872739E-04,-5.532320E-03,6.809308E-04,-1.480167E-03},
    EIRFunPLR =           {5.682807E-01,-3.888781E-02,6.619097E-06,1.715735E+00,-1.791541E+00,3.851853E-02,0.000000E+00,5.124705E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller Trane CVHF 1758kW/6.87COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller Trane CVHF 1758kW/6.87COP/Vanes,  !- Name
    1758300,                 !- Reference Capacity {W}
    6.87,                    !- Reference COP {W/W}
    5.56,                    !- Reference Leaving Chilled Water Temperature {C}
    32.08,                   !- Reference Leaving Condenser Water Temperature {C}
    0.06309,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.06309,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller Trane CVHF 1758kW/6.87COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller Trane CVHF 1758kW/6.87COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller Trane CVHF 1758kW/6.87COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
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
