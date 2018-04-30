within Buildings.HeatTransfer.Data.Solids;
record Generic "Thermal properties of solids with heat storage"
    extends Buildings.HeatTransfer.Data.BaseClasses.Material(final R=x/k,
                                                             final TSol=293.15,
                                                             final TLiq=293.15,
                                                             final LHea=0,
                                                             final phasechange=false);
  annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="datSol",
    Documentation(info="<html>
<p>
Generic record for solid materials.
The material is characterized by its
thermal conductivity, mass density and specific
heat capacity.
</p>
</html>", revisions="<html>
<ul>
<li>
September 9, 2010, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
end Generic;
