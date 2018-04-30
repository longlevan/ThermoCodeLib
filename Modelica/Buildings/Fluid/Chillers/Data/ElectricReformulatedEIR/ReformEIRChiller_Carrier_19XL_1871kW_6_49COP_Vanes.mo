within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_Carrier_19XL_1871kW_6_49COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -1870800,
    COP_nominal =         6.49,
    PLRMin =              0.19,
    PLRMinUnl =           0.19,
    PLRMax =              1.03,
    mEva_flow_nominal =   1000 * 0.06303,
    mCon_flow_nominal =   1000 * 0.0877,
    TEvaLvg_nominal =     273.15 + 6.67,
    TConLvg_nominal =     273.15 + 32.00,
    TEvaLvgMin =          273.15 + 4.44,
    TEvaLvgMax =          273.15 + 8.89,
    TConLvgMin =          273.15 + 20.92,
    TConLvgMax =          273.15 + 35.06,
    capFunT =             {-7.422008E-01,-5.893189E-02,-6.359815E-03,1.450953E-01,-3.416848E-03,5.905773E-03},
    EIRFunT =             {1.182368E+00,-6.852914E-02,2.718010E-03,-1.693531E-02,6.861400E-04,4.136164E-05},
    EIRFunPLR =           {1.085769E+00,-5.971095E-02,1.041798E-04,7.182300E-01,-5.729312E-01,5.367072E-02,0.000000E+00,-1.472327E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller Carrier 19XL 1871kW/6.49COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller Carrier 19XL 1871kW/6.49COP/Vanes,  !- Name
    1870800,                 !- Reference Capacity {W}
    6.49,                    !- Reference COP {W/W}
    6.67,                    !- Reference Leaving Chilled Water Temperature {C}
    32.00,                   !- Reference Leaving Condenser Water Temperature {C}
    0.06303,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.0877,                  !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller Carrier 19XL 1871kW/6.49COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller Carrier 19XL 1871kW/6.49COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller Carrier 19XL 1871kW/6.49COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.19,                    !- Minimum Part Load Ratio
    1.03,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.19,                    !- Minimum Unloading Ratio
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
