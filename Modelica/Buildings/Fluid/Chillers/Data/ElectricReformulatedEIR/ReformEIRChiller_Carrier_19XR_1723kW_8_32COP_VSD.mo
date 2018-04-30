within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_Carrier_19XR_1723kW_8_32COP_VSD =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -1723100,
    COP_nominal =         8.32,
    PLRMin =              0.18,
    PLRMinUnl =           0.18,
    PLRMax =              1.03,
    mEva_flow_nominal =   1000 * 0.04757,
    mCon_flow_nominal =   1000 * 0.06934,
    TEvaLvg_nominal =     273.15 + 6.11,
    TConLvg_nominal =     273.15 + 19.44,
    TEvaLvgMin =          273.15 + 6.11,
    TEvaLvgMax =          273.15 + 12.78,
    TConLvgMin =          273.15 + 18.07,
    TConLvgMax =          273.15 + 31.40,
    capFunT =             {1.239005E-01,-7.123944E-02,-2.643936E-03,9.396468E-02,-2.643737E-03,4.923920E-03},
    EIRFunT =             {-1.372893E-01,-1.137042E-01,-3.395214E-03,1.210097E-01,-2.615543E-03,4.943923E-03},
    EIRFunPLR =           {1.363743E+00,-2.534882E-02,7.213176E-05,-3.644022E+00,5.935760E+00,2.202104E-02,0.000000E+00,-2.617944E+00,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller Carrier 19XR 1723kW/8.32COP/VSD" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller Carrier 19XR 1723kW/8.32COP/VSD,  !- Name
    1723100,                 !- Reference Capacity {W}
    8.32,                    !- Reference COP {W/W}
    6.11,                    !- Reference Leaving Chilled Water Temperature {C}
    19.44,                   !- Reference Leaving Condenser Water Temperature {C}
    0.04757,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.06934,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller Carrier 19XR 1723kW/8.32COP/VSD CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller Carrier 19XR 1723kW/8.32COP/VSD EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller Carrier 19XR 1723kW/8.32COP/VSD EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.18,                    !- Minimum Part Load Ratio
    1.03,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.18,                    !- Minimum Unloading Ratio
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
