within Buildings.Fluid.Data.Pipes;
record PEX_DN_200 = Buildings.Fluid.Data.Pipes.PEX_RADTEST (
    dOut = 204E-3,
    dIn =  200E-3) "PEX DN 200"
  annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="datPip");
