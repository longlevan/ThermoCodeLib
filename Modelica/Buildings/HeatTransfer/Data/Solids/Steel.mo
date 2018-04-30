within Buildings.HeatTransfer.Data.Solids;
record Steel = Buildings.HeatTransfer.Data.Solids.Generic (
    k=50.2,
    d=7850,
    c=450,
    steadyState=true) "Steel (k=50.2)"
  annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="datSol");
