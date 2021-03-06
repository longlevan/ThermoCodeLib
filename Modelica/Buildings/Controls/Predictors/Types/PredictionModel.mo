within Buildings.Controls.Predictors.Types;
type PredictionModel = enumeration(
    Average "Average load of previous days",
    WeatherRegression "Regression model based on outside temperature")
  "Enumeration for the prediction models" annotation (Documentation(info=
                             "<html>
<p>
Enumeration for the prediction models.
The possible values are
</p>
<ol>
<li>
Average
</li>
<li>
WeatherRegression
</li>
</ol>
</html>",
        revisions="<html>
<ul>
<li>
March 21, 2014 by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
