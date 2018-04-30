within Buildings.HeatTransfer.Data.OpaqueSurfaces;
record Generic "Thermal properties of opaque surfaces"
    extends Modelica.Icons.Record;
 parameter Modelica.SIunits.Area A "Area";
 parameter Modelica.SIunits.Angle til
    "Surface tilt (0: ceiling, pi/2: wall, pi: floor";
 parameter Modelica.SIunits.Emissivity absIR=0.84 "Infrared absorptivity";
 parameter Modelica.SIunits.Emissivity absSol=0.84 "Solar absorptivity";
 final parameter Boolean isFloor=til > 2.74889125 and til < 3.53428875
    "Flag, true if construction is a floor" annotation (Evaluate=true);

 annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="datOpaSur",
    Documentation(info="<html>
<p>
This record implements thermophysical properties for opaque surfaces.
</p>
<p>
The parameter <code>absIR</code>
is used to compute infrared heat radiation (in the infrared spectrum).
The parameter <code>absSol</code>
is used to compute solar heat radiation (in the solar spectrum).
</p>
</html>",
revisions="<html>
<ul>
<li>
November 16, 2010, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
end Generic;
