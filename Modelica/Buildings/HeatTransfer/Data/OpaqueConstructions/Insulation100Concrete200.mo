within Buildings.HeatTransfer.Data.OpaqueConstructions;
record Insulation100Concrete200 =
    Buildings.HeatTransfer.Data.OpaqueConstructions.Generic (
      material={Solids.InsulationBoard(x=0.1),
                Solids.Concrete(x=0.2)},
                final nLay=2)
  "Construction with 100 mm insulation and 200 mm concrete"
  annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="datOpaCon");
