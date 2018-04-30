within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_Carrier_19XR_1656kW_8_24COP_VSD =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -1656300,
    COP_nominal =         8.24,
    PLRMin =              0.17,
    PLRMinUnl =           0.17,
    PLRMax =              1.04,
    mEva_flow_nominal =   1000 * 0.04322,
    mCon_flow_nominal =   1000 * 0.06296,
    TEvaLvg_nominal =     273.15 + 6.11,
    TConLvg_nominal =     273.15 + 19.83,
    TEvaLvgMin =          273.15 + 6.11,
    TEvaLvgMax =          273.15 + 12.78,
    TConLvgMin =          273.15 + 18.63,
    TConLvgMax =          273.15 + 31.21,
    capFunT =             {3.653257E-01,-6.139152E-02,-2.815890E-03,7.447010E-02,-2.488202E-03,5.049502E-03},
    EIRFunT =             {2.129183E-01,-9.725092E-02,-2.082833E-03,8.782361E-02,-1.867589E-03,3.572892E-03},
    EIRFunPLR =           {1.682264E-01,5.313899E-02,1.193363E-04,-2.621319E+00,4.728237E+00,-5.785047E-02,0.000000E+00,-1.229602E+00,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller Carrier 19XR 1656kW/8.24COP/VSD" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller Carrier 19XR 1656kW/8.24COP/VSD,  !- Name
    1656300,                 !- Reference Capacity {W}
    8.24,                    !- Reference COP {W/W}
    6.11,                    !- Reference Leaving Chilled Water Temperature {C}
    19.83,                   !- Reference Leaving Condenser Water Temperature {C}
    0.04322,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.06296,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller Carrier 19XR 1656kW/8.24COP/VSD CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller Carrier 19XR 1656kW/8.24COP/VSD EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller Carrier 19XR 1656kW/8.24COP/VSD EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.17,                    !- Minimum Part Load Ratio
    1.04,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.17,                    !- Minimum Unloading Ratio
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
