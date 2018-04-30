within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_McQuay_WSC_816kW_6_74COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -815800,
    COP_nominal =         6.74,
    PLRMin =              0.09,
    PLRMinUnl =           0.09,
    PLRMax =              1.03,
    mEva_flow_nominal =   1000 * 0.01748,
    mCon_flow_nominal =   1000 * 0.04164,
    TEvaLvg_nominal =     273.15 + 8.89,
    TConEnt_nominal =     273.15 + 26.67,
    TEvaLvgMin =          273.15 + 7.22,
    TEvaLvgMax =          273.15 + 12.78,
    TConEntMin =          273.15 + 12.78,
    TConEntMax =          273.15 + 26.67,
    capFunT =             {9.862590E-01,5.799373E-02,-5.355626E-03,-8.941705E-04,-1.670098E-03,4.733054E-03},
    EIRFunT =             {7.335321E-01,4.465107E-04,-3.448575E-03,3.770822E-03,-2.189675E-04,2.400267E-03},
    EIRFunPLR =           {3.070136E-01,8.654874E-02,6.081551E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller McQuay WSC 816kW/6.74COP/Vanes" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller McQuay WSC 816kW/6.74COP/Vanes,  !- Name
    815800,                  !- Reference Capacity {W}
    6.74,                    !- Reference COP {W/W}
    8.89,                    !- Reference Leaving Chilled Water Temperature {C}
    26.67,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.01748,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.04164,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller McQuay WSC 816kW/6.74COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller McQuay WSC 816kW/6.74COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller McQuay WSC 816kW/6.74COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.09,                    !- Minimum Part Load Ratio
    1.03,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.09,                    !- Minimum Unloading Ratio
    Chilled Water Side Inlet Node,  !- Chilled Water Inlet Node Name
    Chilled Water Side Outlet Node,  !- Chilled Water Outlet Node Name
    Condenser Side Inlet Node,  !- Condenser Inlet Node Name
    Condenser Side Outlet Node,  !- Condenser Outlet Node Name
    WaterCooled,             !- Condenser Type
    ,                        !- Condenser Fan Power Ratio {W/W}
    1.0,                     !- Compressor Motor Efficiency
    2.0,                     !- Leaving Chilled Water Lower Temperature Limit {C}
    ConstantFlow,            !- Chiller Flow Mode
    0.0;                     !- Design Heat Recovery Water Flow Rate {m3/s}
</pre>
</html>"));
