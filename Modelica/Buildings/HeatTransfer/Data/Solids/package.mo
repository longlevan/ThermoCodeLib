within Buildings.HeatTransfer.Data;
package Solids "Package with solid material, characterized by thermal conductance, density and specific heat capacity"
    extends Modelica.Icons.MaterialPropertiesPackage;









annotation (
Documentation(
info="<html>
<p>
Package with records for solid materials.
The material is characterized by its
thermal conductivity, mass density and specific
heat capacity.
</p>
<p>
These material records automatically compute the spatial grid
that is used to compute transient heat conduction.
In building materials, the thermal diffusivity of adjacent layer materials can differ by an order of magnitude. If the spatial grid generation were not to account for the material properties, then the time rate of change of the different temperature nodes would be significantly different from each other.
Therefore, records in the packages
<a href=\"Buildings.HeatTransfer.Data.Solids\">
Buildings.HeatTransfer.Data.Solids</a>
and
<a href=\"Buildings.HeatTransfer.Data.SolidsPCM\">
Buildings.HeatTransfer.Data.SolidsPCM</a>
generate the spatial grid so that under the assumption of equal heat transfer, each node temperature has a similar time rate of change.
</p>
<p>
The computation is as follows:
</p>
<p>
From dimensionless analysis, one can obtain a characteristic time, called the <em>Fourier</em> number, as
</p>
<p align=\"center\" style=\"font-style:italic;\">
Fo = &alpha; t &frasl; L<sup>2</sup>
</p>
<p>
where <i>&alpha;</i> denotes the thermal diffusivity, <i>t</i> denotes time and <i>L</i> denotes the characteristic length.
We like to generate the spatial grid so that the ratio
<i>t &frasl; Fo</i>
is equal to an arbitrary constant
<i>&Pi;</i>, which we define as
</p>
<p align=\"center\" style=\"font-style:italic;\">
&Pi; = ( t &frasl; Fo )<sup>1/2</sup>
</p>

<p>and hence</p>

<p align=\"center\" style=\"font-style:italic;\">
&Pi; = L &frasl; &radic; &alpha;.
</p>

<p>
Now, let <i>x</i>
denote the thickness of the material layer.
Then, we compute the time constant of the material layer as
</p>
<p align=\"center\" style=\"font-style:italic;\">
&Pi;<sub>x</sub> = x &frasl; &radic; &alpha;,
</p>
<p>
and we compute the estimated number of elements <i>N' &isin; &#8477;</i>
for the material layer as</p>

<p align=\"center\" style=\"font-style:italic;\">
N' = N<sub>ref</sub> &Pi;<sub>x</sub> &frasl; &Pi;<sub>ref</sub>
</p>

<p>
where <i>&Pi;<sub>ref</sub> &isin; &#8469;</i> is a user-specified number of elements
for a reference material, which is equal to the parameter
<code>nStaRef</code>, and defined as a concrete construction with thickness
<i>L<sub>ref</sub> = 0.20</i> meter and thermal diffusivity
<i>&alpha;<sub>ref</sub> = 3.64E-7</i> m<sup>2</sup>/s.
Hence,
<i>&Pi;<sub>ref</sub> = L<sub>ref</sub>/ &radic; &alpha;<sub>ref</sub> = 331.4</i>
&radic;s.
</p>

<p>
Next, we define the number of elements for the material layer as
<p align=\"center\" style=\"font-style:italic;\">
<i>N<sub>x</sub> = &lceil;  N' &rceil;</i>
</p>

<p>
where the notation <i>&lceil; &#8901; &rceil;</i> is defined, for
<i>s &isin; &#8477;</i>, as
<p align=\"center\" style=\"font-style:italic;\">
&lceil; s &rceil; = min{ k &isin; &#8484; | k &ge; s }.
</p>
<p>
Finally, we divide the material layer in compartments of length
<i>&Delta; = x &frasl; N<sub>x</sub></i>.
</p>

</html>",
revisions="<html>
<ul>
<li>
October 31, 2016, by Michael Wetter:<br/>
Added thermal properties of glass.
</li>
<li>
September 9, 2010, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
end Solids;
