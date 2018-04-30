within Buildings.Fluid.Data.Pipes;
record PEX_DN_6 = Buildings.Fluid.Data.Pipes.PEX_RADTEST (
    dOut = 8E-3,
    dIn =  6E-3) "PEX DN 6"
  annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="datPip");
