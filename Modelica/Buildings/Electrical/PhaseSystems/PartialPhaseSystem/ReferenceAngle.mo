within Buildings.Electrical.PhaseSystems.PartialPhaseSystem;
type ReferenceAngle "Reference angle for connector"
  extends SI.Angle;

  function equalityConstraint "Assert that angles are equal"
    extends Modelica.Icons.Function;
    input ReferenceAngle theta1[:];
    input ReferenceAngle theta2[:];
    output Real residue[0];
  algorithm
    for i in 1:size(theta1, 1) loop
      assert(abs(theta1[i] - theta2[i]) < Modelica.Constants.eps,
        "Angles theta1 and theta2 are not equal over the connection.");
    end for;
  end equalityConstraint;
  annotation (Documentation(info="<html>
This type defines the voltage angle (used by the phasorial approach) for a specific connector that extends
<a href=\"modelica://Buildings.Electrical.PhaseSystems.PartialPhaseSystem\">
Buildings.Electrical.PhaseSystems.PartialPhaseSystem</a>.
</html>"));
end ReferenceAngle;
