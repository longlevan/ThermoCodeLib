within Buildings.Fluid.Data.Pipes;
record Generic "Generic record for pipes"
  extends Modelica.Icons.Record;
  parameter Modelica.SIunits.Length dOut(min=0) "Outer diameter";
  parameter Modelica.SIunits.Length dIn(min=0) "Inner diameter";
  final parameter Modelica.SIunits.Length s(min=0) = (dOut-dIn)/2 "Wall thickness";
  parameter Modelica.SIunits.Length roughness(min=0) "Roughness";
  parameter Modelica.SIunits.Density d "Mass density";
  parameter Modelica.SIunits.ThermalConductivity k "Thermal conductivity";
  annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="datPip",
    Documentation(info=
                 "<html>
<p>
This is a generic record for pipes.
</p>
</html>",
        revisions="<html>
<ul>
<li>
April 5, 2012, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
end Generic;
