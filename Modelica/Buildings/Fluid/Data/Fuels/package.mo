within Buildings.Fluid.Data;
package Fuels "Package with properties of fuels"
    extends Modelica.Icons.MaterialPropertiesPackage;







    annotation (
preferredView="info",
Documentation(info="<html>
<p>
Package with records for fuel properties.
Note that the heating value and the mass density can vary for individual fuels.
The parameter <code>mCO2</code> are the CO<sub>2</sub> emission in kilograms
that are released per kilogram fuel that is burnt.
</p>
</html>", revisions="<html>
<ul>
<li>
December 22, 2011, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
end Fuels;
