within Buildings.HeatTransfer.Data.Gases;
function specificHeatCapacity
    "Function to compute the specific heat capacity for gases"
  input Buildings.HeatTransfer.Data.Gases.Generic gas "Record of gas data";
  input Modelica.SIunits.Temperature T "Gas temperature";
  output Modelica.SIunits.SpecificHeatCapacity c_p "Specific heat capacity";
algorithm
  c_p := gas.a_c + gas.b_c*T;
end specificHeatCapacity;
