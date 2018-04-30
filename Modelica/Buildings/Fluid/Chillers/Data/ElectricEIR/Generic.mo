within Buildings.Fluid.Chillers.Data.ElectricEIR;
record Generic "Generic data record for chiller ElectricEIR"
  extends Buildings.Fluid.Chillers.Data.BaseClasses.Chiller(
      final nCapFunT=6,
      final nEIRFunT=6,
      final nEIRFunPLR=3);
  parameter Modelica.SIunits.Temperature TConEnt_nominal
    "Temperature of fluid entering condenser at nominal condition"
    annotation (Dialog(group="Nominal condition"));

  parameter Modelica.SIunits.Temperature TConEntMin
    "Minimum value for entering condenser temperature"
    annotation (Dialog(group="Performance curves"));
  parameter Modelica.SIunits.Temperature TConEntMax
    "Maximum value for entering condenser temperature"
    annotation (Dialog(group="Performance curves"));

  annotation (
    defaultComponentName="datChi",
    defaultComponentPrefixes="parameter",
    Documentation(info=
                 "<html>
<p>This record is used as a template for performance data
for the chiller model
<a href=\"Buildings.Fluid.Chillers.ElectricEIR\">
Buildings.Fluid.Chillers.ElectricEIR</a>.
</p>
</html>",
        revisions="<html>
<ul>
<li>
December 19, 2014 by Michael Wetter:<br/>
Added <code>defaultComponentName</code> and <code>defaultComponentPrefixes</code>.
</li><li>
September 17, 2010 by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
end Generic;
