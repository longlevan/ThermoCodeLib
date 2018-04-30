within Buildings.HeatTransfer.Data.Solids;
record InsulationBoard = Buildings.HeatTransfer.Data.Solids.Generic (
    k=0.03,
    d=40,
    c=1200) "Insulation board (k=0.03)"
  annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="datSol");
