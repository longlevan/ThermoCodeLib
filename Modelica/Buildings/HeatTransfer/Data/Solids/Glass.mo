within Buildings.HeatTransfer.Data.Solids;
record Glass = Buildings.HeatTransfer.Data.Solids.Generic (
    k=1.0,
    d=2500,
    c=700) "Glass"
  annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="datSol");
