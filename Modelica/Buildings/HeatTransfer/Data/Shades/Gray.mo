within Buildings.HeatTransfer.Data.Shades;
record Gray=Buildings.HeatTransfer.Data.Shades.Generic (
    tauSol_a = 0.25,
    tauSol_b = 0.25,
    rhoSol_a = 0.25,
    rhoSol_b = 0.25,
    absIR_a = 0.25,
    absIR_b = 0.25) "Gray"
  annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="datSha");
