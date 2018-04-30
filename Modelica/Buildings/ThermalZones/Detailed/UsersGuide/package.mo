within Buildings.ThermalZones.Detailed;
package UsersGuide "User's Guide"
  extends Modelica.Icons.Information;



  annotation (preferredView="info",
  Documentation(info="<html>
<p>
The package <a href=\"modelica://Buildings.ThermalZones.Detailed\">Buildings.ThermalZones.Detailed</a> contains models for heat transfer
through the building envelope.
Multiple instances of these models can be connected to create
a multi-zone building model.
To compute the air exchange between rooms and between a room
and the exterior, the room models can be connected to
multi-zone air exchange models from the package
<a href=\"modelica://Buildings.Airflow\">
Buildings.Airflow</a>.
The room models can also be linked to models of HVAC systems
that are composed of the components in the package
<a href=\"modelica://Buildings.Fluid\">
Buildings.Fluid</a>.
</p>
<p>
There are two different room models, one assumes the room air to be completely
mixed, and the other implements a computuational fluid dynamic model to compute
air flow, temperature and species distribution inside the room.
These models are further described in their respective user's guide,
<a href=\"modelica://Buildings.ThermalZones.Detailed.UsersGuide.MixedAir\">Buildings.ThermalZones.Detailed.UsersGuide.MixedAir</a>
and
<a href=\"modelica://Buildings.ThermalZones.Detailed.UsersGuide.CFD\">Buildings.ThermalZones.Detailed.UsersGuide.CFD</a>.
</p>
<h4>Modeling of conventional and electrochromic windows</h4>
<p>
Both models have the option of modeling electrochromic windows.
The window properties are specified in a record
<a href=\"modelica://Buildings.HeatTransfer.Data.GlazingSystems\">Buildings.HeatTransfer.Data.GlazingSystems</a>
which contains for the glass layer the record
<a href=\"modelica//Buildings.HeatTransfer.Data.Glasses\">Buildings.HeatTransfer.Data.Glasses</a>.
If any glass layer has multiple properties, then the glass is assumed to be controllable,
and the room model will have an input connector
<code>uWin</code> that is used for the control input signal of the glass.
This connnector is a vector in which each element is a control signal,
with value between <i>0</i> and <i>1</i>, for a particular window.
Hence, either all or none of the windows must be electrochromic.
(If your room has a mixture of conventional and electrochromic windows, then set
all windows to be electrochromic, but simply use a constant control signal for the
conventional windows, and set it to the off-state.)
If all windows are conventional, then the connector <code>uWin</code> is removed.
However, its icon may still be visible as the visual rendering engine may not evaluate
the equations that are needed to determine whether there are controllable windows.
</p>
<p>
The model
<a href=\"modelica://Buildings.ThermalZones.Detailed.Examples.ElectroChromicWindow\">
Buildings.ThermalZones.Detailed.Examples.ElectroChromicWindow</a>
shows how to configure electrochromic windows.
</p>
<h4>Experimental settings</h4>
<p>
Both models have the option to time sample the heat transfer calculation.
Setting the parameter <code>sampleModel</code> samples the radiative heat transfer
with a sampling time of <i>2</i> minutes. This can give shorter simulation time
if there is already a time sampling in the system model.
This option is experimental and may be changed or removed in future versions.
</p>
</html>"));
end UsersGuide;
