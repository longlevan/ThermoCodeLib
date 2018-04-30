within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_York_YK_5170kW_7_15COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -5169500,
    COP_nominal =         7.15,
    PLRMin =              0.15,
    PLRMinUnl =           0.15,
    PLRMax =              1.07,
    mEva_flow_nominal =   1000 * 0.17665,
    mCon_flow_nominal =   1000 * 0.26498,
    TEvaLvg_nominal =     273.15 + 6.67,
    TConLvg_nominal =     273.15 + 31.43,
    TEvaLvgMin =          273.15 + 4.44,
    TEvaLvgMax =          273.15 + 8.89,
    TConLvgMin =          273.15 + 21.30,
    TConLvgMax =          273.15 + 34.88,
    capFunT =             {-1.064004E+00,-2.233223E-01,-7.441205E-03,2.281866E-01,-6.268922E-03,1.390983E-02},
    EIRFunT =             {5.056958E-01,-2.296962E-02,-1.632795E-03,2.230325E-02,-1.548393E-04,8.256108E-04},
    EIRFunPLR =           {7.949169E-01,9.107817E-04,3.483284E-05,-2.015044E+00,3.394622E+00,-2.646463E-03,0.000000E+00,-1.152785E+00,0.000000E+00,0.000000E+00},
    etaMotor =            1.0) "ReformEIRChiller York YK 5170kW/7.15COP/Vanes"
  annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller York YK 5170kW/7.15COP/Vanes,  !- Name
    5169500,                 !- Reference Capacity {W}
    7.15,                    !- Reference COP {W/W}
    6.67,                    !- Reference Leaving Chilled Water Temperature {C}
    31.43,                   !- Reference Leaving Condenser Water Temperature {C}
    0.17665,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.26498,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller York YK 5170kW/7.15COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller York YK 5170kW/7.15COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller York YK 5170kW/7.15COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.15,                    !- Minimum Part Load Ratio
    1.07,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.15,                    !- Minimum Unloading Ratio
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
