within Buildings.Fluid.Data.Pipes;
record PEX_DN_100 = Buildings.Fluid.Data.Pipes.PEX_RADTEST (
    dOut = 104E-3,
    dIn =  100E-3) "PEX DN 100"
  annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="datPip");
