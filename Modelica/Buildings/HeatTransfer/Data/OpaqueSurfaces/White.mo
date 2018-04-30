within Buildings.HeatTransfer.Data.OpaqueSurfaces;
record White=Buildings.HeatTransfer.Data.OpaqueSurfaces.Generic (absIR=0.0,
      absSol=0.0) "White surface with absIR=0.0, absSol=0.0"
  annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="datOpaSur");
