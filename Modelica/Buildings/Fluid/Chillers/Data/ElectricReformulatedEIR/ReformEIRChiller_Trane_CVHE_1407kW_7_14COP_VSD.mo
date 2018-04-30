within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_Trane_CVHE_1407kW_7_14COP_VSD =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -1406600,
    COP_nominal =         7.14,
    PLRMin =              0.30,
    PLRMinUnl =           0.30,
    PLRMax =              1.07,
    mEva_flow_nominal =   1000 * 0.05047,
    mCon_flow_nominal =   1000 * 0.07571,
    TEvaLvg_nominal =     273.15 + 5.56,
    TConLvg_nominal =     273.15 + 28.96,
    TEvaLvgMin =          273.15 + 4.44,
    TEvaLvgMax =          273.15 + 8.89,
    TConLvgMin =          273.15 + 17.66,
    TConLvgMax =          273.15 + 34.28,
    capFunT =             {1.098635E-01,-4.154795E-02,-6.348039E-03,8.801570E-02,-2.631387E-03,5.846073E-03},
    EIRFunT =             {6.391346E-01,5.159383E-02,-5.750293E-03,-9.196660E-03,7.380570E-04,-4.665422E-04},
    EIRFunPLR =           {2.754461E-01,6.701607E-02,-8.579222E-05,-4.299994E+00,7.901098E+00,-6.298243E-02,0.000000E+00,-2.924081E+00,0.000000E+00,0.000000E+00},
    etaMotor =            1.0) "ReformEIRChiller Trane CVHE 1407kW/7.14COP/VSD"
  annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller Trane CVHE 1407kW/7.14COP/VSD,  !- Name
    1406600,                 !- Reference Capacity {W}
    7.14,                    !- Reference COP {W/W}
    5.56,                    !- Reference Leaving Chilled Water Temperature {C}
    28.96,                   !- Reference Leaving Condenser Water Temperature {C}
    0.05047,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.07571,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller Trane CVHE 1407kW/7.14COP/VSD CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller Trane CVHE 1407kW/7.14COP/VSD EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller Trane CVHE 1407kW/7.14COP/VSD EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.30,                    !- Minimum Part Load Ratio
    1.07,                    !- Maximum Part Load Ratio
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
