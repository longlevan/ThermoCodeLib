within Buildings.Fluid.Data.Pipes;
record PEX_RADTEST = Buildings.Fluid.Data.Pipes.Generic (
    dOut =      0.025,
    dIn =        0.020,
    roughness = 0.007E-3,
    d =         983,
    k =         0.35) "PEX from RADTEST Validation Suite"
  annotation (
  defaultComponentPrefixes="parameter",
  defaultComponentName="datPip",
  Documentation(info=
                 "<html>
<p>
PEX pipe from Achermann and Zweifel (2003).
</p>
<h4>References</h4>
<p>
Achermann, Matthias and Gerhard Zweifel.
RADTEST - Radiant Heating and Cooling Test Cases.
A Report of Task 22, Subtask C, Building Energy Analysis Tools
Comparative Evaluation Tests. Luzern, Switzerland. April 2003.
</p>
</html>",
        revisions="<html>
<ul>
<li>
April 5, 2012, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
