within Buildings.VLLE.SandBox.Examples.Tutorials.SpaceHeating;
model System1 "1st part of te system model, consisting of the room with heat transfer"
  replaceable package MediumA = Buildings.Media.Air;
  parameter Modelica.SIunits.Volume V = 6*10*3 "room volume";
  parameter Modelica.SIunits.MassFlowRate mA_flow_nominal = V*1.2*6/3600 "nominal mass flow rate";
  parameter Modelica.SIunits.HeatFlowRate QRooInt_flow = 4000 "internal heat gains for the room";
  Fluid.MixingVolumes.MixingVolume vol(
    V=V,
    redeclare package Medium = MediumA,
    m_flow_nominal=mA_flow_nominal)
    annotation (Placement(transformation(extent={{60,0},{80,20}})));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor theCon(G=20000/30)
    annotation (Placement(transformation(extent={{-28,28},{-8,48}})));
  Modelica.Thermal.HeatTransfer.Components.HeatCapacitor heaCap(C=2*V*1.2*1006)
    "Heat capacity for funitures and walls"
    annotation (Placement(transformation(extent={{-38,-24},{-18,-4}})));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow preHea
    "Prescribed heat flow"
    annotation (Placement(transformation(extent={{0,62},{20,82}})));
  Modelica.Blocks.Sources.CombiTimeTable timTab(
    table=[-6,0; 8,QRooInt_flow; 18,0],
    smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
    extrapolation=Modelica.Blocks.Types.Extrapolation.Periodic,
    timeScale=3600) "Time table for internal heat gain"
    annotation (Placement(transformation(extent={{-72,64},{-52,84}})));
  Modelica.Thermal.HeatTransfer.Sources.FixedTemperature TOut(T(displayUnit="degC")=
         263.15) "Outside temperature"
    annotation (Placement(transformation(extent={{-78,28},{-58,48}})));
equation
  connect(TOut.port, theCon.port_a) annotation (Line(points={{-58,38},{-46,38},
          {-46,42},{-28,42},{-28,38}}, color={191,0,0}));
  connect(timTab.y[1], preHea.Q_flow) annotation (Line(points={{-51,74},{-26,74},
          {-26,72},{0,72}}, color={0,0,127}));
  connect(preHea.port, vol.heatPort) annotation (Line(points={{20,72},{40,72},{
          40,10},{60,10}}, color={191,0,0}));
  connect(theCon.port_b, vol.heatPort) annotation (Line(points={{-8,38},{26,38},
          {26,10},{60,10}}, color={191,0,0}));
  connect(heaCap.port, vol.heatPort) annotation (Line(points={{-28,-24},{16,-24},
          {16,10},{60,10}}, color={191,0,0}));
  annotation (
    Icon(coordinateSystem(preserveAspectRatio=false)),
    Diagram(coordinateSystem(preserveAspectRatio=false)),
    Documentation(info="<html>

</html>"));


end System1;
