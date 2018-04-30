within Buildings.HeatTransfer.Data.SolidsPCM;
record Generic "Thermal properties of solids with heat storage"
    extends Buildings.HeatTransfer.Data.BaseClasses.Material(final R=x/k,
                                                             final phasechange=true);

  annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="datSolPCM",
    Documentation(info=
   "<html>
<p>
Generic record for phase change materials.
The record extends from
<a href=\"modelica://Buildings.HeatTransfer.Data.BaseClasses.Material\">
Buildings.HeatTransfer.Data.BaseClasses.Material</a>
and declares parameters and constants for phase change materials.
</p>
</html>",
        revisions="<html>
<ul>
<li>
March 9, 2013, by Michael Wetter:<br/>
Revised implementation.
</li>
<li>
February 20, 2013, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));

end Generic;
