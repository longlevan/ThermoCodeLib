within Buildings.Fluid.Data.Pipes;
record PEX_DN_8 = Buildings.Fluid.Data.Pipes.PEX_RADTEST (
    dOut = 10E-3,
    dIn =  8E-3) "PEX DN 8"
  annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="datPip");
