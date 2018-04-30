within Buildings.HeatTransfer.Data.OpaqueSurfaces;
record Gray=Buildings.HeatTransfer.Data.OpaqueSurfaces.Generic (absIR=0.5,
      absSol=0.5) "Gray surface with absIR=0.5, absSol=0.5"
  annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="datOpaSur");
