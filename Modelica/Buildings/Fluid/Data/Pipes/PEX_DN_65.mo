within Buildings.Fluid.Data.Pipes;
record PEX_DN_65 = Buildings.Fluid.Data.Pipes.PEX_RADTEST (
    dOut = 70E-3,
    dIn =  66E-3) "PEX DN 65"
  annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="datPip");
