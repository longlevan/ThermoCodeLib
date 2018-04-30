within Buildings.HeatTransfer.Data.OpaqueConstructions;
record Generic "Thermal properties of opaque constructions"

 parameter Integer nLay(min=1) "Number of layers";

 parameter Buildings.HeatTransfer.Data.BaseClasses.Material material[nLay]
    "Layer by layer declaration of material, starting from outside to room-side"
    annotation (choicesAllMatching=true, Evaluate=false, Placement(transformation(extent={{60,60},{80,80}})));
 final parameter Real R(unit="m2.K/W")=sum(material[i].R for i in 1:nLay)
    "Thermal resistance per unit area";
  parameter Integer nSta[nLay](each min=1) = {material[i].nSta for i in 1:nLay}
    "Number of states (do not overwrite, used to work around Dymola 2017 bug)"
    annotation (HideResult=true, Dialog(enable=false, tab="Advanced"));
 parameter Modelica.SIunits.Emissivity absIR_a=0.9
    "Infrared absorptivity of surface a (usually outside-facing surface)";
 parameter Modelica.SIunits.Emissivity absIR_b=0.9
    "Infrared absorptivity of surface b (usually room-facing surface)";
 parameter Modelica.SIunits.Emissivity absSol_a=0.5
    "Solar absorptivity of surface a (usually outside-facing surface)";
 parameter Modelica.SIunits.Emissivity absSol_b=0.5
    "Solar absorptivity of surface b (usually room-facing surface)";
 parameter Buildings.HeatTransfer.Types.SurfaceRoughness roughness_a=
    Buildings.HeatTransfer.Types.SurfaceRoughness.Medium
    "Exterior surface roughness";

  annotation (Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,
            -100},{100,100}}), graphics={
        Rectangle(
          extent={{-100,50},{100,-100}},
          lineColor={0,0,255},
          fillColor={255,255,85},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{-54,42},{-36,-92}},
          lineColor={0,0,0},
          fillColor={215,215,215},
          fillPattern=FillPattern.Forward),
        Rectangle(
          extent={{4,42},{54,-92}},
          lineColor={0,0,0},
          fillColor={215,215,215},
          fillPattern=FillPattern.CrossDiag),
        Text(
          extent={{-127,113},{127,53}},
          textString="%name",
          lineColor={0,0,255}),
        Rectangle(
          extent={{-36,42},{4,-92}},
          lineColor={0,0,0},
          fillColor={255,255,255},
          fillPattern=FillPattern.Backward)}),
    defaultComponentPrefixes="parameter",
    defaultComponentName="datOpaCon",
    Documentation(info="<html>
Generic record with material definitions for constructions
with one or more layers of material.
By convention, <code>layer[1]</code> is facing the outside, and the last
layer is facing the room-side.
This is the same convention as is used in EnergyPlus and in Window 6.

<p>
The parameters <code>absIR_a</code> and <code>absIR_b</code>
are used to compute infrared heat radiation (in the infrared spectrum).
The parameters <code>absSol_a</code> and <code>absSol_b</code>
are used to compute solar heat radiation (in the solar spectrum).
</p>
<p>
The parameter <code>roughness_a</code> is used if the convective heat transfer
coefficient of the exterior surface is computed based on the wind-speed, wind-direction
and temperature difference. See
<a href=\"modelica://Buildings.HeatTransfer.Convection.Exterior\">
Buildings.HeatTransfer.Convection.Exterior</a>.
</p>
</html>",
revisions="<html>
<ul>
<li>
January 05, 2017, by Thierry S. Nouidui:<br/>
Added parameter <code>nSta</code> to avoid translation error
in Dymola 2107. This is a work-around for a bug in Dymola
which will be addressed in future releases.
</li>
<li>
July 1, 2013, by Michael Wetter:<br/>
Changed the annotation of the instance <code>material</code>
from
<code>Evaluate=true</code> to <code>Evaluate=false</code>.
This is required to allow changing the material properties after compilation.
Note, however, that the number of state variables in
<a href=\"modelica://Buildings.HeatTransfer.Data.BaseClasses.Material\">
Buildings.HeatTransfer.Data.BaseClasses.Material</a>
are only computed when the model is translated, because
the number of state variables is fixed at compilation time.
</li>
<li>
March 13, 2013, by Michael Wetter:<br/>
Replaced <code>Buildings.HeatTransfer.Data.Solids.Generic</code>
with
<code>Buildings.HeatTransfer.Data.OpaqueConstructions.Generic</code>
to allow use of phase change material.
</li>
<li>
November 16, 2010, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));

end Generic;
