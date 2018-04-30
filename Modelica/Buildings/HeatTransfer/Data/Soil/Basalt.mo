within Buildings.HeatTransfer.Data.Soil;
record Basalt =
    Buildings.HeatTransfer.Data.Soil.Generic (
    k=2.3,
    d=1140,
    c=1200) "Basalt (k=2.3)"
  annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="datSoi");
