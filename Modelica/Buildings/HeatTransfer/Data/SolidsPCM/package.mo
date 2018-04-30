within Buildings.HeatTransfer.Data;
package SolidsPCM "Package with solid material, characterized by thermal conductance, density and specific heat capacity"
    extends Modelica.Icons.MaterialPropertiesPackage;






annotation (
Documentation(
info="<html>
<p>
Package with records for solid materials with embedded phase change material.
The material is characterized by its
thermal conductivity, mass density and specific
heat capacity, as well as the solidus and liquidus temperatures, and
the latent heat.
</p>
<p>
For a description of the parameter <code>nStaRef</code>, which is
used to generate the spatial grid, see the documentation of the package
<a href=\"modelica://Buildings.HeatTransfer.Data.Solids\">
Buildings.HeatTransfer.Data.Solids</a>.
</p>
</html>",
revisions="<html>
<ul>
<li>
February 20, 2013, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
end SolidsPCM;
