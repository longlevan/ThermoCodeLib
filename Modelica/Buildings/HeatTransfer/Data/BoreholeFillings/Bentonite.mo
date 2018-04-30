within Buildings.HeatTransfer.Data.BoreholeFillings;
record Bentonite =
    Buildings.HeatTransfer.Data.BoreholeFillings.Generic (
    k=1.15,
    d=1600,
    c=800) "Bentonite (k=1.15)"
  annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="datFil");
