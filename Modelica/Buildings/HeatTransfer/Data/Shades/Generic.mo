within Buildings.HeatTransfer.Data.Shades;
record Generic "Thermal properties of window shades"
    extends Modelica.Icons.Record;
 parameter Modelica.SIunits.TransmissionCoefficient tauSol_a=0.1
    "Solar transmissivity of shade surface a (surface that faces the outside or the room)";
 parameter Modelica.SIunits.TransmissionCoefficient tauSol_b=0.1
    "Solar transmissivity of shade surface b (surface that faces the glass)";
 parameter Modelica.SIunits.ReflectionCoefficient rhoSol_a=0.8
    "Solar reflection coefficient of shade surface a (surface that faces the outside or the room)";
 parameter Modelica.SIunits.ReflectionCoefficient rhoSol_b=0.8
    "Solar reflection coefficient of shade surface b (surface that faces the glass)";
 parameter Modelica.SIunits.Emissivity absIR_a=0.84
    "Infrared absorptivity of surface a (surface that faces the outside or the room)";
 parameter Modelica.SIunits.Emissivity absIR_b=0.84
    "Infrared absorptivity of surface b (surface that faces the glass)";
 parameter Modelica.SIunits.TransmissionCoefficient tauIR_a=0
    "Infrared transmissivity of surface a (surface that faces the outside or the room)";
 parameter Modelica.SIunits.TransmissionCoefficient tauIR_b=0
    "Infrared transmissivity of surface b (surface that faces the glass)";

  annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="datSha",
    Documentation(info="<html>
Records that implements thermophysical properties for window shades.
</html>",
revisions="<html>
<ul>
<li>
Sep. 3 2010, by Michael Wetter, Wangda Zuo:<br/>
First implementation.
</li>
</ul>
</html>"));
end Generic;
