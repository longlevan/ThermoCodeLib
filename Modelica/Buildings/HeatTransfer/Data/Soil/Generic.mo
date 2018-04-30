within Buildings.HeatTransfer.Data.Soil;
record Generic "Thermal properties of solids with heat storage"
    extends Buildings.HeatTransfer.Data.BaseClasses.ThermalProperties;
  annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="datSoi",
    Documentation(info="<html>
<p>
Generic record for solid materials used as soil.
The material is characterized by its
thermal conductivity, mass density and specific
heat capacity.
</p>
</html>", revisions="<html>
<ul>
<li>
April 24, 2011, by Pierre Vigouroux:<br/>
First implementation.
</li>
</ul>
</html>"));
end Generic;
