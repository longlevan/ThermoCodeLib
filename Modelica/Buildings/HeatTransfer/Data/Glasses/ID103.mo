within Buildings.HeatTransfer.Data.Glasses;
record ID103 = Buildings.HeatTransfer.Data.Glasses.Generic (
    x=0.0057,
    k=1.0,
    tauSol={0.771},
    rhoSol_a={0.070},
    rhoSol_b={0.070},
    tauIR=0,
    absIR_a=0.84,
    absIR_b=0.84) "Generic Clear Glass 5.7mm. Manufacturer: Generic."
  annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="datGla");
