within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_Carrier_19XR_897kW_6_50COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -896700,
    COP_nominal =         6.50,
    PLRMin =              0.20,
    PLRMinUnl =           0.20,
    PLRMax =              1.02,
    mEva_flow_nominal =   1000 * 0.06782,
    mCon_flow_nominal =   1000 * 0.04423,
    TEvaLvg_nominal =     273.15 + 9.82,
    TConLvg_nominal =     273.15 + 29.49,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 10.00,
    TConLvgMin =          273.15 + 18.06,
    TConLvgMax =          273.15 + 29.67,
    capFunT =             {5.761951E-01,5.897243E-03,-8.764033E-04,3.207348E-02,-1.225175E-03,2.019768E-03},
    EIRFunT =             {9.192535E-01,9.218992E-03,1.241236E-03,-1.554079E-02,1.074639E-03,-2.071288E-03},
    EIRFunPLR =           {-5.497250E-01,5.035076E-02,-1.927855E-05,1.678371E+00,-1.535993E+00,-4.944902E-02,0.000000E+00,1.396972E+00,0.000000E+00,0.000000E+00},
    etaMotor =            1.0)
  "ReformEIRChiller Carrier 19XR 897kW/6.50COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller Carrier 19XR 897kW/6.50COP/Vanes,  !- Name
    896700,                  !- Reference Capacity {W}
    6.50,                    !- Reference COP {W/W}
    9.82,                    !- Reference Leaving Chilled Water Temperature {C}
    29.49,                   !- Reference Leaving Condenser Water Temperature {C}
    0.06782,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.04423,                 !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller Carrier 19XR 897kW/6.50COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller Carrier 19XR 897kW/6.50COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller Carrier 19XR 897kW/6.50COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.20,                    !- Minimum Part Load Ratio
    1.02,                    !- Maximum Part Load Ratio
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
