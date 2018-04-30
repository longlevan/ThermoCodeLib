within Buildings.HeatTransfer.Data.GlazingSystems;
record DoubleClearAir13Clear =
    Buildings.HeatTransfer.Data.GlazingSystems.Generic (
    final glass={Glasses.ID102(), Glasses.ID102()},
    final gas={Gases.Air(x=0.0127)},
    UFra=1.4) "Double pane, clear glass 3mm, air 12.7, clear glass 3mm"
  annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="datGlaSys");
