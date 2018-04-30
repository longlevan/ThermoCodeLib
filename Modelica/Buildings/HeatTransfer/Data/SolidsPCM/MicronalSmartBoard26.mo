within Buildings.HeatTransfer.Data.SolidsPCM;
record MicronalSmartBoard26 =
  Buildings.HeatTransfer.Data.SolidsPCM.Generic (
    k=0.18,
    d=767,
    c=1200,
    TSol=273.15+25.99,
    TLiq=273.15+26.01,
    LHea=28696) "Micronal PCM SmartBoard 26"
  annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="datSolPCM");
