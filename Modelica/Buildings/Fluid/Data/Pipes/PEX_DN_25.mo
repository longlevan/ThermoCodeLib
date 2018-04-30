within Buildings.Fluid.Data.Pipes;
record PEX_DN_25 = Buildings.Fluid.Data.Pipes.PEX_RADTEST (
    dOut = 29E-3,
    dIn =  26E-3) "PEX DN 25"
  annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="datPip");
