within Buildings.Fluid.Chillers.Data.ElectricReformulatedEIR;
record Generic "Generic data record for chiller ElectricReformulatedEIR"
  extends Buildings.Fluid.Chillers.Data.BaseClasses.Chiller(
      final nCapFunT=6,
      final nEIRFunT=6,
      final nEIRFunPLR=10);
  parameter Modelica.SIunits.Temperature TConLvg_nominal
    "Temperature of fluid leaving condenser at nominal condition";

  parameter Modelica.SIunits.Temperature TConLvgMin
    "Minimum value for leaving condenser temperature"
    annotation (Dialog(group="Performance curves"));
  Modelica.SIunits.Temperature TConLvgMax
    "Maximum value for leaving condenser temperature"
    annotation (Dialog(group="Performance curves"));

  annotation (
    defaultComponentName="datChi",
    defaultComponentPrefixes="parameter",
    Documentation(info=
                 "<html>
This record is used as a template for performance data
for the chiller model
<a href=\"Buildings.Fluid.Chillers.ElectricReformulatedEIR\">
Buildings.Fluid.Chillers.ElectricReformulatedEIR</a>.
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
