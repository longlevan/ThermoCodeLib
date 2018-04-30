within Buildings.HeatTransfer.Data.OpaqueSurfaces;
record Black=Buildings.HeatTransfer.Data.OpaqueSurfaces.Generic (absIR=1.0,
      absSol=1.0) "Black surface with absIR=1.0, absSol=1.0"
  annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="datOpaSur");
