within Buildings.HeatTransfer.Data.Solids;
record Concrete = Buildings.HeatTransfer.Data.Solids.Generic (
    k=1.4,
    d=2240,
    c=840) "Concrete (k=1.4)"
  annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="datSol");
