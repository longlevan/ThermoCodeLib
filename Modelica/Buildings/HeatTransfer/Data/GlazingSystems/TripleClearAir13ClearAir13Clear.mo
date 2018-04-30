within Buildings.HeatTransfer.Data.GlazingSystems;
record TripleClearAir13ClearAir13Clear =
    Buildings.HeatTransfer.Data.GlazingSystems.Generic (
    final glass={Glasses.ID102(),Glasses.ID102(),Glasses.ID102()},
    final gas={Gases.Air(x=0.0127),Gases.Air(x=0.0127)},
    UFra=1.4)
  "Triple pane, clear glass 3mm, air 12.7, clear glass 3mm, air 12.7, clear glass 3mm"
  annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="datGlaSys");
