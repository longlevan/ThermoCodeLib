within Buildings.Fluid.Data.Pipes;
record PEX_DN_10 = Buildings.Fluid.Data.Pipes.PEX_RADTEST (
    dOut = 13E-3,
    dIn =  10E-3) "PEX DN 10"
  annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="datPip");
