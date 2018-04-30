within Buildings.Fluid.Data.Pipes;
record PEX_DN_80 = Buildings.Fluid.Data.Pipes.PEX_RADTEST (
    dOut = 85E-3,
    dIn =  81E-3) "PEX DN 80"
  annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="datPip");
