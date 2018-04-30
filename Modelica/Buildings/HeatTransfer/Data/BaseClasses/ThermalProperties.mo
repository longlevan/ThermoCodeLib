within Buildings.HeatTransfer.Data.BaseClasses;
record ThermalProperties "Thermal properties of materials with storage"
  extends Modelica.Icons.Record;
  parameter Modelica.SIunits.ThermalConductivity k "Thermal conductivity";
  parameter Modelica.SIunits.SpecificHeatCapacity c "Specific heat capacity";
  parameter Modelica.SIunits.Density d "Mass density";
  parameter Boolean steadyState= (c < Modelica.Constants.eps or d < Modelica.Constants.eps)
    "Flag, if true, then material is computed using steady-state heat conduction"
    annotation(Evaluate=true);
 annotation (preferredView="info",
 defaultComponentPrefixes="parameter",
 defaultComponentName="datThePro",
  Documentation(info="<html>
Base record for materials, used in circular geometry or other configurations, that only declares the thermal properties.
<br/>
<p>
The specific heat capacity can be zero, in which case the material
will be modeled as a thermal resistor that does not store energy.
</p>
</html>",
revisions="<html>
<ul>
<li>
March 1, 2016, by Michael Wetter:<br/>
Removed test for equality of <code>Real</code> variables.
This is for
<a href=\"https://github.com/lbl-srg/modelica-buildings/issues/493\">issue 493</a>.
</li>
<li>
April 2011, by Pierre Vigouroux:<br/>
</li>
<li>
April 12 2011, by Pierre Vigouroux:<br/>
First implementation.
</li>
</ul>
</html>"), Icon(graphics={
        Line(points={{-100,-50},{100,-50}}, color={0,0,0}),
        Text(
          visible=not (c == 0),
          extent={{-80,36},{-10,12}},
          lineColor={0,0,0},
          textString="d=%d"),
        Text(
          visible=not (c == 0),
          extent={{-80,-58},{-6,-88}},
          lineColor={0,0,0},
          textString="c=%c"),
        Text(
          extent={{-74,-12},{-14,-36}},
          lineColor={0,0,0},
          textString="k=%k"),
        Line(points={{-100,0},{100,0}},     color={0,0,0})}));
end ThermalProperties;
