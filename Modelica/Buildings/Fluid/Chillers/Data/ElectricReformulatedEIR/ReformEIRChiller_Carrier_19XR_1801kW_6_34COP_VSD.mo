within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_Carrier_19XR_1801kW_6_34COP_VSD =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -1800500,
    COP_nominal =         6.34,
    PLRMin =              0.20,
    PLRMinUnl =           0.20,
    PLRMax =              1.03,
    mEva_flow_nominal =   1000 * 0.05161,
    mCon_flow_nominal =   1000 * 0.06385,
    TEvaLvg_nominal =     273.15 + 7.22,
    TConLvg_nominal =     273.15 + 31.70,
    TEvaLvgMin =          273.15 + 6.67,
    TEvaLvgMax =          273.15 + 12.22,
    TConLvgMin =          273.15 + 19.63,
    TConLvgMax =          273.15 + 32.95,
    capFunT =             {3.277256E-01,-9.423458E-02,-1.714249E-03,7.496846E-02,-1.987466E-03,4.807394E-03},
    EIRFunT =             {6.993760E-01,3.436644E-03,1.120695E-03,-3.794674E-03,7.200808E-04,-1.623357E-03},
    EIRFunPLR =           {-3.986781E-03,2.064845E-02,-1.459614E-05,-5.111204E-01,2.257468E+00,-1.990453E-02,0.000000E+00,-7.517775E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller Carrier 19XR 1801kW/6.34COP/VSD" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller Carrier 19XR 1801kW/6.34COP/VSD,  !- Name
    1800500,                 !- Reference Capacity {W}
    6.34,                    !- Reference COP {W/W}
    7.22,                    !- Reference Leaving Chilled Water Temperature {C}
    31.70,                   !- Reference Leaving Condenser Water Temperature {C}
    0.05161,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.06385,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller Carrier 19XR 1801kW/6.34COP/VSD CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller Carrier 19XR 1801kW/6.34COP/VSD EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller Carrier 19XR 1801kW/6.34COP/VSD EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
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
