within Buildings.HeatTransfer.Data.Solids;
record GypsumBoard = Buildings.HeatTransfer.Data.Solids.Generic (
    k=0.16,
    d=800,
    c=1090) "Gypsum board (k=0.58)"
  annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="datSol");
