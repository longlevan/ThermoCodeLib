within Buildings.Fluid.Data.Fuels;
record HeatingOilHigherHeatingValue = HeatingOilLowerHeatingValue (
    h=45.4E6) "Heating oil, higher heating value"
  annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="datFue");
