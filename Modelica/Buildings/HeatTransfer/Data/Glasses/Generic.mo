within Buildings.HeatTransfer.Data.Glasses;
record Generic "Thermal properties of window glass"
    extends Modelica.Icons.Record;
 parameter Modelica.SIunits.Length x=0.003 "Thickness";
 parameter Modelica.SIunits.ThermalConductivity k=1 "Thermal conductivity";
 parameter Modelica.SIunits.TransmissionCoefficient tauSol[:] = {0.6}
    "Solar transmittance";
 parameter Modelica.SIunits.ReflectionCoefficient rhoSol_a[:] = {0.075}
    "Solar reflectance of surface a (usually outside-facing surface)";
 parameter Modelica.SIunits.ReflectionCoefficient rhoSol_b[:] = {0.075}
    "Solar reflectance of surface b (usually room-facing surface)";
 parameter Modelica.SIunits.TransmissionCoefficient tauIR = 0
    "Infrared transmissivity of glass";
 parameter Modelica.SIunits.Emissivity absIR_a = 0.84
    "Infrared absorptivity of surface a (usually outside-facing surface)";
 parameter Modelica.SIunits.Emissivity absIR_b = 0.84
    "Infrared absorptivity of surface b (usually room-facing surface)";
  annotation (
  defaultComponentPrefixes="parameter",
  defaultComponentName="datGla",
  Documentation(info="<html>
<p>
This record implements thermophysical properties for window glass.
See
<a href=\"modelica://Buildings.HeatTransfer.Data.Glasses\">
Buildings.HeatTransfer.Data.Glasses</a>
for instructions.
</p>
</html>",
revisions="<html>
<ul>
<li>
August 7, 2015, by Michael Wetter:<br/>
Revised model to allow modeling of electrochromic windows.
This is for
<a href=\"https://github.com/lbl-srg/modelica-buildings/issues/445\">issue 445</a>.
</li>
<li>
December 09, 2011, by Wangda Zuo:<br/>
Compare the variable names with those in Window 6 and correct the variable names <i>Emis1</i> and <i>Emis2</i> in documentation.
</li>
<li>
Sep. 3 2010, by Michael Wetter, Wangda Zuo:<br/>
First implementation.
</li>
</ul>
</html>"));
end Generic;
