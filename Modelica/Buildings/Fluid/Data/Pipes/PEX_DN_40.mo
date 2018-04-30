within Buildings.Fluid.Data.Pipes;
record PEX_DN_40 = Buildings.Fluid.Data.Pipes.PEX_RADTEST (
    dOut = 41E-3,
    dIn =  38E-3) "PEX DN 40"
  annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="datPip");
