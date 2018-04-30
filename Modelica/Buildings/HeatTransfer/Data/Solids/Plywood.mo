within Buildings.HeatTransfer.Data.Solids;
record Plywood = Buildings.HeatTransfer.Data.Solids.Generic (
    k=0.12,
    d=540,
    c=1210) "Plywood (k=0.12)"
  annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="datSol");
