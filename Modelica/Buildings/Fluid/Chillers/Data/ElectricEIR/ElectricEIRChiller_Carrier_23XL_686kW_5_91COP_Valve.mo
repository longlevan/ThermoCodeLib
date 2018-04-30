within Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_Carrier_23XL_686kW_5_91COP_Valve =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal =  -685700,
    COP_nominal =         5.91,
    PLRMin =              0.20,
    PLRMinUnl =           0.20,
    PLRMax =              1.04,
    mEva_flow_nominal =   1000 * 0.0571,
    mCon_flow_nominal =   1000 * 0.03255,
    TEvaLvg_nominal =     273.15 + 6.11,
    TConEnt_nominal =     273.15 + 23.74,
    TEvaLvgMin =          273.15 + 5.56,
    TEvaLvgMax =          273.15 + 10.00,
    TConEntMin =          273.15 + 12.78,
    TConEntMax =          273.15 + 23.89,
    capFunT =             {2.903523E-01,-2.676742E-02,-4.771695E-03,8.162394E-02,-3.028217E-03,5.712524E-03},
    EIRFunT =             {5.014060E-01,1.561000E-03,-1.347980E-04,1.525028E-02,5.701374E-04,-1.221374E-03},
    EIRFunPLR =           {2.113934E-01,4.190226E-01,3.686143E-01},
    etaMotor =            1.0)
  "ElectricEIRChiller Carrier 23XL 686kW/5.91COP/Valve" annotation (
  defaultComponentName="datChi",
  defaultComponentPrefixes="parameter",
  Documentation(info=
                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller Carrier 23XL 686kW/5.91COP/Valve,  !- Name
    685700,                  !- Reference Capacity {W}
    5.91,                    !- Reference COP {W/W}
    6.11,                    !- Reference Leaving Chilled Water Temperature {C}
    23.74,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.0571,                  !- Reference Chilled Water Flow Rate {m3/s}
    0.03255,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller Carrier 23XL 686kW/5.91COP/Valve CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller Carrier 23XL 686kW/5.91COP/Valve EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller Carrier 23XL 686kW/5.91COP/Valve EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.20,                    !- Minimum Part Load Ratio
    1.04,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.20,                    !- Minimum Unloading Ratio
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
