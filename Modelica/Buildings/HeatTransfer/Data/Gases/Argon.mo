within Buildings.HeatTransfer.Data.Gases;
record Argon = Generic(a_k= 2.285E-3, b_k= 5.149E-5,
                       a_mu=3.379E-6, b_mu=6.451E-8,
                       a_c=521.9285,  b_c= 0,
                       MM=39.948E-3) "Thermophysical properties for argon"
  annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="datGas");
