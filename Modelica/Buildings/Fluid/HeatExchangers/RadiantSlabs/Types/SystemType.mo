within Buildings.Fluid.HeatExchangers.RadiantSlabs.Types;
type SystemType = enumeration(
    Ceiling_Wall_or_Capillary
      "Radiant heating or cooling system (ceiling or wall)",
    Floor "Floor heating system") "System type for radiant slab" annotation (
    Documentation(info="<html>
<p>
This type definition is used to specify
the type of radiant system to be modeled.
See the
<a href=\"modelica://Buildings.Fluid.HeatExchangers.RadiantSlabs.UsersGuide\">
user's guide</a>
for more information.
</p>
</html>"));
