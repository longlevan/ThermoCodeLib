within Buildings.Fluid.Data.Pipes;
record PEX_DN_150 = Buildings.Fluid.Data.Pipes.PEX_RADTEST (
    dOut = 154E-3,
    dIn =  150E-3) "PEX DN 150"
  annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="datPip");
