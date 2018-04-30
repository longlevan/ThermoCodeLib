within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_Carrier_19XR_2391kW_6_44COP_VSD =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -2391300,
    COP_nominal =         6.44,
    PLRMin =              0.20,
    PLRMinUnl =           0.20,
    PLRMax =              1.03,
    mEva_flow_nominal =   1000 * 0.06858,
    mCon_flow_nominal =   1000 * 0.0846,
    TEvaLvg_nominal =     273.15 + 7.22,
    TConLvg_nominal =     273.15 + 31.70,
    TEvaLvgMin =          273.15 + 6.67,
    TEvaLvgMax =          273.15 + 12.22,
    TConLvgMin =          273.15 + 19.76,
    TConLvgMax =          273.15 + 32.68,
    capFunT =             {-1.105784E-01,-7.215657E-02,-1.924398E-03,1.073110E-01,-2.578512E-03,4.153768E-03},
    EIRFunT =             {6.030335E-01,-1.099862E-02,6.898379E-04,1.213607E-02,2.415707E-04,-7.792847E-04},
    EIRFunPLR =           {1.309393E-01,1.443518E-02,-9.784460E-07,-8.596110E-01,2.724452E+00,-1.436270E-02,0.000000E+00,-9.969677E-01,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller Carrier 19XR 2391kW/6.44COP/VSD" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller Carrier 19XR 2391kW/6.44COP/VSD,  !- Name
    2391300,                 !- Reference Capacity {W}
    6.44,                    !- Reference COP {W/W}
    7.22,                    !- Reference Leaving Chilled Water Temperature {C}
    31.70,                   !- Reference Leaving Condenser Water Temperature {C}
    0.06858,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.0846,                  !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller Carrier 19XR 2391kW/6.44COP/VSD CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller Carrier 19XR 2391kW/6.44COP/VSD EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller Carrier 19XR 2391kW/6.44COP/VSD EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
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
