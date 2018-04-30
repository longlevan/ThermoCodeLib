within Buildings.HeatTransfer.Data.Glasses;
record ID102 = Buildings.HeatTransfer.Data.Glasses.Generic (
    x=0.003,
    k=1.0,
    tauSol={0.834},
    rhoSol_a={0.075},
    rhoSol_b={0.075},
    tauIR=0,
    absIR_a=0.84,
    absIR_b=0.84) "Generic Clear Glass 3.048mm. Manufacturer: Generic."
  annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="datGla");
