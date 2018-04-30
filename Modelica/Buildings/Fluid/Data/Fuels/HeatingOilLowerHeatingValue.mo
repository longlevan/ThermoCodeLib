within Buildings.Fluid.Data.Fuels;
record HeatingOilLowerHeatingValue = Buildings.Fluid.Data.Fuels.Generic (
    h=42.6E6,
    d=845,
    mCO2=3.136) "Heating oil, lower heating value"
  annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="datFue");
