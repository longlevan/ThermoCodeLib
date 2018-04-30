within Buildings.Fluid.Data.Pipes;
record PEX_DN_20 = Buildings.Fluid.Data.Pipes.PEX_RADTEST (
    dOut = 23E-3,
    dIn =  20E-3) "PEX DN 20"
  annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="datPip");
