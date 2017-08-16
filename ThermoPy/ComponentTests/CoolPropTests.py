import CoolProp
from CoolProp.Plots import PropertyPlot
"""
The simplest and most straigth forward use case is the generation of plots with default isolines and spacing. Here is
a brief example to demonstrate how to create a pressure-enthalpy plot for propane (R-290) with automatic isoline spacing:
"""
plot=PropertyPlot('R290','ph')
plot.calc_isolines()
plot.show()
"""
The following example can be used to create a T-s plot for propane with isolines for the vapour quality in steps of 0.2
"""
ts_plot = PropertyPlot('R290','Ts',tp_limits='ORC')
ts_plot.calc_isolines(CoolProp.iQ,num=6)
ts_plot.show()

