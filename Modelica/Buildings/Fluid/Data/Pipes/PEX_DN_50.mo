within Buildings.Fluid.Data.Pipes;
record PEX_DN_50 = Buildings.Fluid.Data.Pipes.PEX_RADTEST (
    dOut = 53E-3,
    dIn =  50E-3) "PEX DN 50"
  annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="datPip");
