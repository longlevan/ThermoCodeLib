within Buildings.HeatTransfer.Data.OpaqueConstructions;
record Concrete200 =
    Buildings.HeatTransfer.Data.OpaqueConstructions.Generic (
      material={Solids.Concrete(x=0.2)},
      final nLay=1) "Construction with 200mm concrete"
  annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="datOpaCon");
