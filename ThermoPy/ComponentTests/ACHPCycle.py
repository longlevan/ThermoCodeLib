from __future__ import division
import sys
from ACHP.ACHP.Compressor import CompressorClass # Compressor
from ACHP.ACHP.Condenser import CondenserClass # Condenser
from ACHP.ACHP.Evaporator import EvaporatorClass # Evaporator
from ACHP.ACHP.CoolingCoil import CoolingCoilClass # Cooling Coil
from ACHP.ACHP.MultiCircuitEvaporator import MultiCircuitEvaporatorClass
from ACHP.ACHP.CoaxialHX import CoaxialHXClass # Coaxial internal heat exchanger
from ACHP.ACHP.PHEHX import PHEHXClass # plate-heat-exchanger
from ACHP.ACHP.LineSet import LineSetClass # Line set class
from ACHP.ACHP.Pump import PumpClass # Secondary loop pump class
from scipy.optimize import brentq, fsolve, newton
# fsolve - roots (multiple variables); brent - root of one variable fct

import CoolProp
from CoolProp.Plots import  PropertyPlot
from CoolProp.CoolProp import PropsSI # thermal-physical properties calculateur
from ACHP.ACHP.FinCorrelations import FinInputs # fin correlations
import numpy as np # NumPy is fundamental scientific package
from ACHP.ACHP.Correlations import TrhoPhase_ph
from ACHP.ACHP.Solvers import MultiDimNewtRaph, Broyden
from ACHP.ACHP.Preconditioners import DXPreconditioner,SecondaryLoopPreconditioner

def F2K(T_F):
    """
    Convert temperature in Farenheit to Kelvin
    :param T_F:
    :return:
    """
    return 5/9*(T_F+459.67)

class SecondaryCycleClass():
    def __init__(self):
        """
        Load up the necessary sub-structures to be filled with the code that follows
        :return:
        """