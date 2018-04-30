within Buildings.Fluid.Data.Fuels;
record NaturalGasLowerHeatingValue = Buildings.Fluid.Data.Fuels.Generic (
    h=50E6,
    d=0.84,
    mCO2=2.23) "Natural gas, lower heating value"
  annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="datFue");
