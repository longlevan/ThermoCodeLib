within Buildings.HeatTransfer.Data.Gases;
record Xenon = Generic(a_k= 4.538E-4, b_k= 1.723E-5,
                       a_mu=1.069E-6, b_mu=7.414E-8,
                       a_c=158.3397,  b_c= 0,
                       MM=131.3E-3) "Thermophysical properties for krypton"
  annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="datGas");
