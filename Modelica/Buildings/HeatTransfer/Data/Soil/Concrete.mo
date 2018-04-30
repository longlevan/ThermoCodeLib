within Buildings.HeatTransfer.Data.Soil;
record Concrete = Buildings.HeatTransfer.Data.Soil.Generic (
    k=3.1,
    d=2000,
    c=840) "Concrete (k=3.1)"
  annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="datSoi");
