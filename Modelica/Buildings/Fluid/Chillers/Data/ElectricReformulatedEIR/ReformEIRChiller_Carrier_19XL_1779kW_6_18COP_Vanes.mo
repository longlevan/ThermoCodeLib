within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_Carrier_19XL_1779kW_6_18COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -1779400,
    COP_nominal =         6.18,
    PLRMin =              0.20,
    PLRMinUnl =           0.20,
    PLRMax =              1.03,
    mEva_flow_nominal =   1000 * 0.06303,
    mCon_flow_nominal =   1000 * 0.08858,
    TEvaLvg_nominal =     273.15 + 6.67,
    TConLvg_nominal =     273.15 + 31.69,
    TEvaLvgMin =          273.15 + 4.44,
    TEvaLvgMax =          273.15 + 8.89,
    TConLvgMin =          273.15 + 20.83,
    TConLvgMax =          273.15 + 32.12,
    capFunT =             {-7.421879E-02,-6.864609E-02,-6.656797E-03,9.778610E-02,-2.680195E-03,6.765638E-03},
    EIRFunT =             {5.396428E-01,-3.183208E-02,1.041725E-03,2.112772E-02,4.504330E-05,-4.947764E-04},
    EIRFunPLR =           {7.137642E-01,-3.096191E-02,1.459047E-04,8.907204E-01,-1.051301E+00,2.348095E-02,0.000000E+00,5.406677E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller Carrier 19XL 1779kW/6.18COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller Carrier 19XL 1779kW/6.18COP/Vanes,  !- Name
    1779400,                 !- Reference Capacity {W}
    6.18,                    !- Reference COP {W/W}
    6.67,                    !- Reference Leaving Chilled Water Temperature {C}
    31.69,                   !- Reference Leaving Condenser Water Temperature {C}
    0.06303,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.08858,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller Carrier 19XL 1779kW/6.18COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller Carrier 19XL 1779kW/6.18COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller Carrier 19XL 1779kW/6.18COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
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
