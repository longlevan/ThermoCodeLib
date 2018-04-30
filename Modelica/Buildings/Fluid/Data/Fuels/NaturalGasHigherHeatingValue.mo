within Buildings.Fluid.Data.Fuels;
record NaturalGasHigherHeatingValue = NaturalGasLowerHeatingValue (
    h=55.5E6) "Natural gas, higher heating value"
  annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="datFue");
