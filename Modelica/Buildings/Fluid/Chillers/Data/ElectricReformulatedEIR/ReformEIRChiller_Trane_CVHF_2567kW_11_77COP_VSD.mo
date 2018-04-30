within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_Trane_CVHF_2567kW_11_77COP_VSD =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -2567100,
    COP_nominal =         11.77,
    PLRMin =              0.11,
    PLRMinUnl =           0.11,
    PLRMax =              1.04,
    mEva_flow_nominal =   1000 * 0.12113,
    mCon_flow_nominal =   1000 * 0.15142,
    TEvaLvg_nominal =     273.15 + 4.44,
    TConLvg_nominal =     273.15 + 17.18,
    TEvaLvgMin =          273.15 + 4.44,
    TEvaLvgMax =          273.15 + 8.89,
    TConLvgMin =          273.15 + 17.02,
    TConLvgMax =          273.15 + 35.24,
    capFunT =             {3.150690E-01,7.668658E-03,-4.348521E-03,4.998865E-02,-1.242078E-03,3.158318E-03},
    EIRFunT =             {3.654848E-01,-3.708915E-02,-7.448564E-04,4.585429E-02,1.719990E-04,-3.518960E-04},
    EIRFunPLR =           {-2.955643E-01,2.586243E-02,3.917081E-05,7.440108E-01,3.533880E-01,-2.797714E-02,0.000000E+00,2.247632E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller Trane CVHF 2567kW/11.77COP/VSD" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller Trane CVHF 2567kW/11.77COP/VSD,  !- Name
    2567100,                 !- Reference Capacity {W}
    11.77,                   !- Reference COP {W/W}
    4.44,                    !- Reference Leaving Chilled Water Temperature {C}
    17.18,                   !- Reference Leaving Condenser Water Temperature {C}
    0.12113,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.15142,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller Trane CVHF 2567kW/11.77COP/VSD CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller Trane CVHF 2567kW/11.77COP/VSD EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller Trane CVHF 2567kW/11.77COP/VSD EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.11,                    !- Minimum Part Load Ratio
    1.04,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.11,                    !- Minimum Unloading Ratio
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
