within Buildings.HeatTransfer.Data.Glasses;
record Electrochromic = Buildings.HeatTransfer.Data.Glasses.Generic (
    x=0.006,
    k=0.9,
    tauSol={0.814, 0.111},
    rhoSol_a={0.086, 0.179},
    rhoSol_b={0.086, 0.179},
    tauIR=0,
    absIR_a=0.84,
    absIR_b=0.84) "Electrochromic Glass 6mm. Manufacturer: Generic."
  annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="datGla");
