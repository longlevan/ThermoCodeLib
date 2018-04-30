within Buildings.HeatTransfer.Data.SolidsPCM;
record MicronalSmartBoard23 =
  Buildings.HeatTransfer.Data.SolidsPCM.Generic (
    k=0.18,
    d=767,
    c=1200,
    TSol=273.15+22.99,
    TLiq=273.15+23.01,
    LHea=28696) "Micronal PCM SmartBoard 23"
  annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="datSolPCM");
