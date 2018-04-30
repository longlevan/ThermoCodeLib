within Buildings.HeatTransfer.Data.Soil;
record Sandstone = Buildings.HeatTransfer.Data.Soil.Generic (
    k=2.8,
    d=540,
    c=1210) "Sandstone (k=2.8)"
  annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="datSoi");
