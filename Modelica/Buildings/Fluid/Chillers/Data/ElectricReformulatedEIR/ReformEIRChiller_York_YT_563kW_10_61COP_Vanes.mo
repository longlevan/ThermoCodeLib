within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record ReformEIRChiller_York_YT_563kW_10_61COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR.Generic (
    QEva_flow_nominal =  -562600,
    COP_nominal =         10.61,
    PLRMin =              0.09,
    PLRMinUnl =           0.09,
    PLRMax =              1.02,
    mEva_flow_nominal =   1000 * 0.01514,
    mCon_flow_nominal =   1000 * 0.0241,
    TEvaLvg_nominal =     273.15 + 6.11,
    TConLvg_nominal =     273.15 + 18.89,
    TEvaLvgMin =          273.15 + 6.11,
    TEvaLvgMax =          273.15 + 12.78,
    TConLvgMin =          273.15 + 18.47,
    TConLvgMax =          273.15 + 33.52,
    capFunT =             {-2.841837E-01,-1.006253E-01,-3.157589E-03,1.221758E-01,-3.003466E-03,6.704017E-03},
    EIRFunT =             {-5.308783E-01,-8.364102E-02,-4.054970E-03,1.347115E-01,-1.805617E-03,3.054789E-03},
    EIRFunPLR =           {4.931998E+00,-2.128161E-01,3.520769E-04,-8.586753E+00,1.375722E+01,1.940510E-01,0.000000E+00,-8.859038E+00,0.000000E+00,0.000000E+00},
    etaMotor =            1.0) "ReformEIRChiller York YT 563kW/10.61COP/Vanes"
  annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:ReformulatedEIR,
    ReformEIRChiller York YT 563kW/10.61COP/Vanes,  !- Name
    562600,                  !- Reference Capacity {W}
    10.61,                   !- Reference COP {W/W}
    6.11,                    !- Reference Leaving Chilled Water Temperature {C}
    18.89,                   !- Reference Leaving Condenser Water Temperature {C}
    0.01514,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.0241,                  !- Reference Condenser Water Flow Rate {m3/s}
    ReformEIRChiller York YT 563kW/10.61COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ReformEIRChiller York YT 563kW/10.61COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ReformEIRChiller York YT 563kW/10.61COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.09,                    !- Minimum Part Load Ratio
    1.02,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.09,                    !- Minimum Unloading Ratio
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
