from __future__ import division # make integer 3/2 give 1.5 in python 2.x
from math import pi, log, exp
from CoolProp.CoolProp import PropsSI
from Functions.ACHPCorrelations import f_h_1phase_Tube,ShahEvaporation_Average,LockhartMartinelli,LMPressureGradientAvg,AccelPressureDrop,TwoPhaseDensity
from scipy.optimize import brentq # solvers to find roots (zero points) of function
from scipy.interpolate import interp1d
from Functions.ACHPFinCorrelations import WavyLouveredFins,FinInputs,IsFinsClass,HerringboneFins,PlainFins
from Tools.ACHPTools import ValidateFields
import numpy as np
