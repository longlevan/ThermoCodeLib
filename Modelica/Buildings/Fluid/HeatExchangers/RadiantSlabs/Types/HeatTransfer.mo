within Buildings.Fluid.HeatExchangers.RadiantSlabs.Types;
type HeatTransfer = enumeration(
    EpsilonNTU "Epsilon-NTU",
    FiniteDifference "Finite difference")
  "Model for the heat transfer along the fluid flow direction" annotation (
    Documentation(info="<html>
<p>
This type definition is used to determine
whether the <i>&epsilon;-NTU</i> approach
should be used to compute the heat transfer
between the fluid and the solid.
See the
<a href=\"modelica://Buildings.Fluid.HeatExchangers.RadiantSlabs.UsersGuide\">
user's guide</a>
for more information.
</p>
</html>"));
