within Buildings.HeatTransfer.Data.Gases;
record Air = Generic(a_k= 2.873E-3, b_k= 7.760E-5,
                     a_mu=3.723E-6, b_mu=4.940E-8,
                     a_c=1002.737,  b_c= 1.2324E-2,
                     MM=28.97E-3) "Thermophysical properties for air"
  annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="datGas");
