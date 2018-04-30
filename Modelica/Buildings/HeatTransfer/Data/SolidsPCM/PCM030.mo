within Buildings.HeatTransfer.Data.SolidsPCM;
record PCM030 =Buildings.HeatTransfer.Data.SolidsPCM.Generic (
    k=0.232,
    d=998,
    c=1467,
    TSol=273.15+24,
    TLiq=273.15+26,
    LHea=58300) "Wallboard with 30% of microencapsulated paraffin"
      annotation (
  defaultComponentPrefixes="parameter",
  defaultComponentName="datSolPCM",
  Documentation(info=
                 "<html>
<p>
This material record is for PCM treated wallboard. The data source is Feustel (1995).
</p>
<h4>References</h4>
<p>
Feustel, Helmut E.
Simplified numerical description of latent storage characteristics for phase change wallboard.
<i>LBNL-Technical Report 36933</i>. 1995.
<a href=\"http://dx.doi.org/10.2172/70723\">DOI: 10.2172/70723</a>.
</p>
</html>",
revisions="<html>
<ul>
<li>
March 18, 2013, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
