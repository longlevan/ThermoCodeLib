within Buildings.HeatTransfer.Data.GlazingSystems;
record SingleClear3 =
    Buildings.HeatTransfer.Data.GlazingSystems.Generic (
       glass={Glasses.ID102()},
       UFra=3) "Single pane, clear glass 3mm"
  annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="datGlaSys");
