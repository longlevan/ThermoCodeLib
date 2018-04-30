within Buildings.HeatTransfer.Data.Solids;
record Brick = Buildings.HeatTransfer.Data.Solids.Generic (
    k=0.89,
    d=1920,
    c=790) "Brick (k=0.89)"
  annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="datSol");
