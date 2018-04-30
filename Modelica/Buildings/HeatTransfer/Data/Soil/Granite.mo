within Buildings.HeatTransfer.Data.Soil;
record Granite = Buildings.HeatTransfer.Data.Soil.Generic (
    k=1.9,
    d=1920,
    c=790) "Granite (k=1.9)"
  annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="datSoi");
