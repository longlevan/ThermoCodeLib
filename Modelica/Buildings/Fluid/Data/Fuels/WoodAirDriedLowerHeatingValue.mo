within Buildings.Fluid.Data.Fuels;
record WoodAirDriedLowerHeatingValue = Buildings.Fluid.Data.Fuels.Generic (
    h=14.6E6,
    d=700,
    mCO2=0) "Wood, air-dried, lower heating value" annotation (
  defaultComponentPrefixes="parameter",
  defaultComponentName="datFue",
  Documentation(info=
   "<html>
<p>
The lower heating value is based on Recknagel 2005, Tafel 1.3.6-1.
</p>
<h4>References</h4>
<p>
Hermann Recknagel, Eberhard Sprenger and Ernst-Rudolf Schramek. Taschenbuch fuer Heizung und Klimatechnik.72. Auflage. Oldenbourg Industrieverlage Muenchen. ISBN 3-486-26560-1. 2005.
</p>
</html>"));
