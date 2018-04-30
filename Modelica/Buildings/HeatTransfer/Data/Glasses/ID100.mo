within Buildings.HeatTransfer.Data.Glasses;
record ID100 = Buildings.HeatTransfer.Data.Glasses.Generic (
    x=0.0031,
    k=1.0,
    tauSol={0.646},
    rhoSol_a={0.062},
    rhoSol_b={0.063},
    tauIR=0,
    absIR_a=0.84,
    absIR_b=0.84) "Generic Bronze Glass 3.1mm. Manufacturer: Generic."
  annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="datGla");
