within Buildings.HeatTransfer.Data.OpaqueConstructions;
record Brick120 =
    Buildings.HeatTransfer.Data.OpaqueConstructions.Generic (
      material={Solids.Brick(x=0.12)},
      final nLay=1) "Construction with 120mm brick"
  annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="datOpaCon");
