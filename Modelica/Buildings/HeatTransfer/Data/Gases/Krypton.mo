within Buildings.HeatTransfer.Data.Gases;
record Krypton = Generic(a_k= 9.443E-4, b_k= 2.826E-5,
                         a_mu=2.213E-6, b_mu=7.777E-8,
                         a_c=248.0907,  b_c= 0,
                         MM=83.80E-3) "Thermophysical properties for krypton"
  annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="datGas");
