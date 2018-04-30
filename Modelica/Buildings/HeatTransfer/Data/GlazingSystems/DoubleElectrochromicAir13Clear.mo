within Buildings.HeatTransfer.Data.GlazingSystems;
record DoubleElectrochromicAir13Clear =
    Buildings.HeatTransfer.Data.GlazingSystems.Generic (
    final glass={Glasses.Electrochromic(),
                 Buildings.HeatTransfer.Data.Glasses.Generic(
                   x=0.006,
                   k=0.9,
                   tauSol={0.775, 0.775},
                   rhoSol_a={0.071, 0.071},
                   rhoSol_b={0.071, 0.071},
                   tauIR=0,
                   absIR_a=0.84,
                   absIR_b=0.84)},
    final gas={Gases.Air(x=0.0127)},
    UFra=1.4) "Double pane, electrochromic 6mm, air 12.7, clear glass 6mm"
  annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="datGlaSys",
  Documentation(info="<html>
<p>
Because Modelica requires the same array length for both glasses,
this data set contains two sets of optical properties for both,
the electrochromic and the clear glass layer.
</p>
</html>"));
