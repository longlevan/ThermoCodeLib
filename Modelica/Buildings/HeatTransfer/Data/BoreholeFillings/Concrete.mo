within Buildings.HeatTransfer.Data.BoreholeFillings;
record Concrete =
    Buildings.HeatTransfer.Data.BoreholeFillings.Generic (
    k=3.1,
    d=2000,
    c=840) "Concrete (k=3.1)"
  annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="datFil");
