within Buildings.Fluid.Data.Pipes;
record PEX_DN_32 = Buildings.Fluid.Data.Pipes.PEX_RADTEST (
    dOut = 35E-3,
    dIn =  32E-3) "PEX DN 32"
  annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="datPip");
