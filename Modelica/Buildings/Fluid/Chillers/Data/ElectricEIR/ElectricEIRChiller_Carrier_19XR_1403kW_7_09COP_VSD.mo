within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_Carrier_19XR_1403kW_7_09COP_VSD =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -1403100,
    COP_nominal =         7.09,
    PLRMin =              0.17,
    PLRMinUnl =           0.17,
    PLRMax =              1.03,
    mEva_flow_nominal =   1000 * 0.03426,
    mCon_flow_nominal =   1000 * 0.04252,
    TEvaLvg_nominal =     273.15 + 6.67,
    TConEnt_nominal =     273.15 + 12.78,
    TEvaLvgMin =          273.15 + 6.67,
    TEvaLvgMax =          273.15 + 12.22,
    TConEntMin =          273.15 + 12.78,
    TConEntMax =          273.15 + 23.89,
    capFunT =             {9.601814E-01,-3.596494E-03,-1.706786E-03,6.272429E-03,-9.858212E-04,2.611673E-03},
    EIRFunT =             {1.098641E+00,-2.485880E-02,-6.240421E-05,-1.719488E-03,4.887321E-04,9.618075E-05},
    EIRFunPLR =           {8.788698E-02,2.678891E-01,6.445180E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller Carrier 19XR 1403kW/7.09COP/VSD" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller Carrier 19XR 1403kW/7.09COP/VSD,  !- Name
    1403100,                 !- Reference Capacity {W}
    7.09,                    !- Reference COP {W/W}
    6.67,                    !- Reference Leaving Chilled Water Temperature {C}
    12.78,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.03426,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.04252,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller Carrier 19XR 1403kW/7.09COP/VSD CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller Carrier 19XR 1403kW/7.09COP/VSD EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller Carrier 19XR 1403kW/7.09COP/VSD EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.17,                    !- Minimum Part Load Ratio
    1.03,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.17,                    !- Minimum Unloading Ratio
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
