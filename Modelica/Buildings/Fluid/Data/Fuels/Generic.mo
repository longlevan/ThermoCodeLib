within Buildings.Fluid.Data.Fuels;
record Generic "Generic record of fuel properties"
  extends Modelica.Icons.Record;
  parameter Modelica.SIunits.SpecificEnthalpy h
    "Heating value (lower or upper, depending on fuel)";
  parameter Modelica.SIunits.Density d "Mass density";
  parameter Real mCO2(final min=0) "CO2 emission at combustion, in kg/kg fuel";
  annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="datFue",
    Documentation(info=
                 "<html>
<p>
This is a generic record where the fuel properties need to be specified by the user.
</p>
</html>",
        revisions="<html>
<ul>
<li>
June 26, 2013 by Michael Wetter:<br/>
Corrected wrong type for <code>mCO2</code>.
It was declared as <code>Modelica.SIunits.MassFraction</code>,
which is incorrect.
</li>
<li>
December 22, 2011, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
end Generic;
