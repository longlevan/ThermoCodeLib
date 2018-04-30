within Buildings.HeatTransfer.Data.Gases;
function density "Function to compute the mass density"
  input Buildings.HeatTransfer.Data.Gases.Generic gas "Record of gas data";
  input Modelica.SIunits.Temperature T "Gas temperature";
  output Modelica.SIunits.Density rho "Mass density";
algorithm
    rho := gas.P0*gas.MM/Modelica.Constants.R/T;
end density;
