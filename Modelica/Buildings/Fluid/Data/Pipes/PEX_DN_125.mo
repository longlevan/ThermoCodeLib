within Buildings.Fluid.Data.Pipes;
record PEX_DN_125 = Buildings.Fluid.Data.Pipes.PEX_RADTEST (
    dOut = 129E-3,
    dIn =  125E-3) "PEX DN 125"
  annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="datPip");
