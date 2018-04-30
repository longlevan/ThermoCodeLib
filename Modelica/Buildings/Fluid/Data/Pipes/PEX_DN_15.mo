within Buildings.Fluid.Data.Pipes;
record PEX_DN_15 = Buildings.Fluid.Data.Pipes.PEX_RADTEST (
    dOut = 19E-3,
    dIn =  16E-3) "PEX DN 15"
  annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="datPip");
