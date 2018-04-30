within Buildings.HeatTransfer.Data.Soil;
record Marble =
    Buildings.HeatTransfer.Data.Soil.Generic (
    k=2.7,
    d=2500,
    c=1090) "Marble (k=2.7)"
  annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="datSoi");
