within Buildings.HeatTransfer.Data.Gases;
function thermalConductivity
   "Function to compute the thermal conductivity of gases"
 input Buildings.HeatTransfer.Data.Gases.Generic gas "Record of gas data";
 input Modelica.SIunits.Temperature T "Gas temperature";
 output Modelica.SIunits.ThermalConductivity k "Thermal conductivity";
algorithm
 k := gas.a_k + gas.b_k*T;
end thermalConductivity;
