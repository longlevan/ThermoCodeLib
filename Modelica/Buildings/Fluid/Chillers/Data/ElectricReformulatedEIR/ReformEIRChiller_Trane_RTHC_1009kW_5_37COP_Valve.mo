within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_Trane_RTHC_1009kW_5_37COP_Valve =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -1009200,
    COP_nominal =         5.37,
    PLRMin =              0.30,
    PLRMinUnl =           0.30,
    PLRMax =              1.01,
    mEva_flow_nominal =   1000 * 0.03186,
    mCon_flow_nominal =   1000 * 0.04618,
    TEvaLvg_nominal =     273.15 + 5.56,
    TConLvg_nominal =     273.15 + 31.06,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 10.00,
    TConLvgMin =          273.15 + 26.58,
    TConLvgMax =          273.15 + 31.91,
    capFunT =             {1.207602E+00,3.634622E-02,6.331495E-04,-1.093985E-02,-4.376284E-05,-2.763827E-04},
    EIRFunT =             {4.985801E-01,2.197522E-02,8.236831E-04,-1.956953E-02,1.366952E-03,-2.067504E-03},
    EIRFunPLR =           {1.618518E+00,-6.247569E-02,2.022982E-04,-1.604864E+00,3.518625E+00,5.149642E-02,0.000000E+00,-2.383742E+00,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller Trane RTHC 1009kW/5.37COP/Valve" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller Trane RTHC 1009kW/5.37COP/Valve,  !- Name
    1009200,                 !- Reference Capacity {W}
    5.37,                    !- Reference COP {W/W}
    5.56,                    !- Reference Leaving Chilled Water Temperature {C}
    31.06,                   !- Reference Leaving Condenser Water Temperature {C}
    0.03186,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.04618,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller Trane RTHC 1009kW/5.37COP/Valve CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller Trane RTHC 1009kW/5.37COP/Valve EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller Trane RTHC 1009kW/5.37COP/Valve EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.30,                    !- Minimum Part Load Ratio
    1.01,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.30,                    !- Minimum Unloading Ratio
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
