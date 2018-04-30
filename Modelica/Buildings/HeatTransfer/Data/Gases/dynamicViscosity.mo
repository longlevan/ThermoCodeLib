within Buildings.HeatTransfer.Data.Gases;
function dynamicViscosity "Function to compute the dynamic viscosity for gases"
  input Buildings.HeatTransfer.Data.Gases.Generic gas "Record of gas data";
  input Modelica.SIunits.Temperature T "Gas temperature";
  output Modelica.SIunits.DynamicViscosity mu "Dynamic viscosity";
algorithm
    mu := gas.a_mu + gas.b_mu*T;
end dynamicViscosity;
