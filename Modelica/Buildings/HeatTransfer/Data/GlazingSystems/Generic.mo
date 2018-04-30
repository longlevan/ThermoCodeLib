within Buildings.HeatTransfer.Data.GlazingSystems;
record Generic "Thermal properties of glazing systems"
    extends Modelica.Icons.Record;
//  parameter Integer nLay(min=1, fixed=true) "Number of glass layers"
//    annotation (Evaluate=true);
  parameter Boolean haveExteriorShade = false
    "Set to true if window has an exterior shade (at surface a)"
    annotation (Evaluate=true);
  parameter Boolean haveInteriorShade = false
    "Set to true if window has an interior shade (at surface b)"
    annotation (Evaluate=true);

  parameter Glasses.Generic glass[:]
    "Layer by layer declaration of glass layers, starting from outside to room-side"
    annotation (choicesAllMatching=true,
                Placement(transformation(extent={{60,60},{80,80}})));
  // Zero array sizes are not supported in Dymola. Therefore, we assign
  // a dummy layer. The model for heat conduction in gases will
  // write an assert if the thickness is negative.
  // Therefore, we ensure that any model overwrites this default setting.
  parameter Gases.Generic gas[:] = {Buildings.HeatTransfer.Data.Gases.Air(x=-1)}
    "Layer by layer declaration of glass layers, starting from outside to room-side"
    annotation (choicesAllMatching=true, Placement(transformation(extent={{60,20},{80,40}})));
  parameter Shades.Generic shade "Shade"
    annotation (choicesAllMatching=true,
    Dialog(enable=haveInteriorShade or haveExteriorShade));
  parameter Modelica.SIunits.CoefficientOfHeatTransfer UFra
    "U-value of frame";
  parameter Modelica.SIunits.Emissivity absIRFra=0.8
    "Infrared absorptivity of window frame";
  parameter Modelica.SIunits.Emissivity absSolFra=0.5
    "Solar absorptivity of window frame";
  final parameter Boolean haveShade = haveInteriorShade or haveExteriorShade
    "Parameter that is true if the construction has a shade";
  final parameter Boolean haveControllableWindow=
    Modelica.Math.BooleanVectors.anyTrue(
      {size(glass[iGla].tauSol, 1) > 1 for iGla in 1:size(glass,1)})
    "Flag, true if the window allows multiple states, such as for electrochromic windows"
    annotation(Evalute=true);
  annotation (
  defaultComponentPrefixes="parameter",
  defaultComponentName="datGlaSys",
    Documentation(info="<html>
Generic record that implements thermophysical properties for glazing systems.
</html>",
revisions="<html>
<ul>
<li>
March 13, 2015, by Michael Wetter:<br/>
Refactored model to avoid a translation error
in OpenModelica.
</li>
<li>
May 30, 2014, by Michael Wetter:<br/>
Removed undesirable annotation <code>Evaluate=true</code>.
</li>
<li>
July 15, 2013, by Michael Wetter:<br/>
Removed parameter <code>windowHasShade</code> which is redundant with <code>haveShade</code>.
</li>
<li>
Sep. 3 2010, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
end Generic;
