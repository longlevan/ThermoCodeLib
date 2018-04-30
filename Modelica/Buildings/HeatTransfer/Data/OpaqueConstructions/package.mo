within Buildings.HeatTransfer.Data;
package OpaqueConstructions "Package with opaque constructions for floors, walls, etc."
    extends Modelica.Icons.MaterialPropertiesPackage;




  annotation (preferredView="info",
Documentation(info="<html>
<p>
Package with material definitions for constructions
with one or more layers of material.
By convention, <code>layer[1]</code> is facing the outside, and the last
layer is facing the room-side.
This is the same convention as is used in EnergyPlus and in Window 6.
</p>
<p>
The parameters <code>absIR_a</code> and <code>absIR_b</code>
are used to compute infrared heat radiation (in the infrared spectrum).
The parameters <code>absSol_a</code> and <code>absSol_b</code>
are used to compute solar heat radiation (in the solar spectrum).
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

end OpaqueConstructions;
