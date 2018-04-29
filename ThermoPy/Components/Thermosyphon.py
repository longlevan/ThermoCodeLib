import numpy as np
import matplotlib.pylab as plt
from scipy import optimize
from math import pi
import CoolProp as CP
from CoolProp.CoolProp import PropsSI
import Functions.Functions as fnc
import time


"""
Heat is to be transferred from flue gas leaving a furnace through a horizontal duct to the combustion air flowing
countercurrent in a duct above the flue gas duct, using vertical thermosyphon. It is required to determine the rate of
heat transfer at the cold end of the heat exchanger, where the flue gas is at 186°C and the incoming air is at 27°C. The
carbon steel pipes are 50 mm external diameter, 2.4 mm thick. The total length of each pipe is 4.6 m, split into 1.7 m
for the condenser, 0.1 m for the adiabatic section, and 2.8 m for the evaporator. The working fluid is water, and the
depth of fill is 1.5 m. Axial conduction is negligible. The thermal conductivity of the material of tube is 48 W/(mK).
The pipes have external steel fins, the fin density being greater on the shorter condenser section than on the
evaporator section. The values of the total external surface area (S_o) and the effective outside heat transfer
coefficient (h_o) reffered to the total external surface area, and including an allowance for the fin efficiency are
S_eo = 3.26 [m^2], S_co = 3.08 [m^2]
h_eo = 31 [W/m^2-K], h_co = 37 [W/m^2-K]
This problem must be solved by trial-and-error, because the heat transfer rate (Qdot) is not known. This is likely to be
controlled by the gas-side heat transfer coefficient. Thus it is possible to make first approximation to the solution of
the problem by neglecting the internal thermal resistance (z_3+z_4+z_5+z_6+z_7). The first step is to calculate the
other resistances, namely z_1, z_2, z_8 and z_9; as axial conduction is said to be negligible,
"""
class ThermosyphonClass():
    """
    Class of Thermosyphon

    Inputs:
    L_a: length of adiabatic zone [m]
    L_e: length of evaporating zone [m]
    L_c: length of condensing zone [m]
    """
    def __init__(self,**kwargs):
        # Load the parameters passed in
        # Using the dictionary
        self.__dict__.update(kwargs)
    def Update(self,**kwargs):
        # Load the parameters passed in
        # Using the dictionary
        self.__dict__.update(kwargs)
    def OutputList(self):
        """
        Return a list of parameters for this component for further output
        """
        return [
            ('Total thermal resistance','K/W',self.R_tot),
            ('Radial heat transfer rate','W',self.Qdot)
        ]


    def Calculate(self):
        # AbstractState: The mother of all state classes http://www.coolprop.org/_static/doxygen/html/class_cool_prop_1_1_abstract_state.html
        if hasattr(self,'Backend'): # check if backend is given
            AS = CP.AbstractState(self.Backend,self.fluid)
        else: # Otherwise, use the default backend
            AS = CP.AbstractState('HEOS',self.fluid)
        self.AS = AS

        self.L_eff = self.L_a+(self.L_e+self.L_c)/2 # Thermosyphon effective length
        self.D_i = self.D_o - 2.0 * self.t_pipe # Thermosyphon internal diameter
        A_ei = pi*self.L_e*self.D_i # Evaporator internal surface area
        A_ci = pi*self.L_c*self.D_i # Evaporator internal surface area
        A_axial = pi*(self.D_o**2-self.D_i**2)/4.0 # Axial cross-sectional area

        "Evaporator wall thermal resistance"
        if hasattr(self,'h_fins_evap'):
            self.A_eo,N_fpm_evap = fnc.FinsInputs(self.h_fins_evap,self.t_fins_evap,self.N_fpi_evap,self.D_o,self.L_e)
            self.R_we =(self.t_pipe/self.k_pipe*((self.D_o+2*N_fpm_evap*self.h_fins_evap*(self.D_o+self.h_fins_evap))/(self.D_o-self.t_pipe)))/self.A_eo
        elif hasattr(self,'A_eo'):
            self.R_we = np.log(self.D_o/self.D_i)/(2*pi*self.L_e*self.k_pipe)
        else:
            self.A_eo = pi*self.L_e*self.D_o
            self.R_we = np.log(self.D_o / self.D_i) / (2 * pi * self.L_e * self.k_pipe)

        "Condenser wall thermal resistance"
        if hasattr(self,'h_fins_cond'):
            self.A_co,N_fpm_cond = fnc.FinsInputs(self.h_fins_cond,self.t_fins_cond,self.N_fpi_cond,self.D_o,self.L_c)
            self.R_wc = (self.t_pipe/self.k_pipe*((self.D_o+2*N_fpm_cond*self.h_fins_cond*(self.D_o+self.h_fins_cond))/(self.D_o-self.t_pipe)))/self.A_co
        elif hasattr(self,'A_co'):
            self.R_wc = np.log(self.D_o/self.D_i)/ (2 * pi * self.L_c * self.k_pipe)
        else:
            self.A_co = pi*self.L_c*self.D_o
            self.R_wc = np.log(self.D_o / self.D_i) / (2 * pi * self.L_c * self.k_pipe)

        "(1) Evaporator, condenser outer resistances and axial one"
        self.R_eo = 1/(self.A_eo*self.h_eo) # Evaporator outer thermal resistance
        self.R_co = 1/(self.A_co*self.h_co) # Condenser outer thermal resistance
        self.R_axial = self.L_eff/(self.k_pipe*A_axial) # Axial thermal resistance

        "(3) Calculate the total thermal resistance by neglecting the internal resistance"
        self.R_tot = self.R_eo+self.R_co+self.R_we+self.R_wc

        "The vapour temperature is calculated as:"
        self.T_vc = self.T_co+(self.R_wc+self.R_co)/self.R_tot*(self.T_eo-self.T_co) # for the first time, we neglect the value of thermal resitance R_ci

        "(4) The physical properties of water and steam saturated at T_vc"
        AS.update(CP.QT_INPUTS,1.0,self.T_vc)
        self.p_vc = AS.p()

        AS.update(CP.QT_INPUTS,0.0,self.T_vc)
        rho_l = AS.rhomass()

        "(5) Temperature difference due to hydrostatic head"
        self.p_p =self.p_vc+rho_l*9.8065*self.F_r*self.L_e*np.sin(self.beta) # the pressure at the bottom of the pool
        AS.update(CP.PQ_INPUTS,self.p_p,0.0)
        self.T_p = AS.T() # the temperature at the bottom of the pool

        # The mean temperature difference due to the hydrostatic head
        self.DeltaT_h = (self.T_p-self.T_vc)*self.F_r/2

        # (6) By definition, the effective overall temperature difference is
        self.DeltaT_eff = self.T_eo-self.T_co-self.DeltaT_h

        # (7) The rate of heat transfer is
        self.Qdot = self.DeltaT_eff/self.R_tot

        # Thermosyphon vapour pressure drop
        self.Dp_v = fnc.ThermosyphonVapourPressureDrop(self.fluid,self.T_vc,self.Qdot,self.D_i,self.L_eff)
        self.p_ve = self.p_vc+self.Dp_v
        AS.update(CP.PQ_INPUTS,self.p_ve,0.0)
        self.T_ve = AS.T()

        # steps (8) to (11): Evaporator and condenser inner thermal resistances
        self.R_ei = fnc.BoilingThermalResistanceESDU(self.fluid,self.Qdot,self.D_i,self.L_e,self.T_ve,self.F_r)
        self.R_ci = fnc.CondThermalResistanceESDU(self.fluid,self.Qdot,self.T_vc,self.D_i,self.L_c)

        "Additional thermal resistances"
        h_lv_e = PropsSI('H','P',self.p_ve,'Q',1.0,self.fluid)-PropsSI('H','P',self.p_ve,'Q',0.0,self.fluid)
        h_lv_c = PropsSI('H', 'P', self.p_vc, 'Q', 1.0, self.fluid) - PropsSI('H', 'P', self.p_vc, 'Q', 0.0, self.fluid)
        self.R4 = (8314.34*self.T_ve**2*(2*pi*8314.34*self.T_ve)**(0.5))/(h_lv_e**2*self.p_ve*self.A_eo) # Marcia BHM. Thermosyphon Technology for Industrial Applications.  Heat Pipes and Solid Sorption Transformations: CRC Press; 2013. p. 411-64.
        self.R5 = (self.T_ve-self.T_vc)/self.Qdot
        self.R6 = (8314.34*self.T_vc**2*(2*pi*8314.34*self.T_vc)**(0.5))/(h_lv_c**2*self.p_vc*self.A_co)

        # (12) Adding the internal thermal resistance claculated in steps (8) to (11) to approximate total thermal
        # thermal resistance calculated in steps (1) to (3) gives
        self.R_tot = self.R_eo+self.R_co+1/(1/(self.R_we+self.R_wc+self.R_ei+self.R_ci+self.R4+self.R5+self.R6)+1/self.R_axial)
        Qdot_resid = abs(self.Qdot - self.DeltaT_eff/self.R_tot)

        self.loop_cout = 0

        while Qdot_resid>1.0e-6:
            self.loop_cout +=1
            # calculate again rate of heat transfer
            self.Qdot = self.DeltaT_eff/self.R_tot

            self.T_vc = self.T_co+(self.R_wc+self.R_co+self.R_ci)/self.R_tot*(self.T_eo-self.T_co) # recalculate T_vc with including the value of R_ci
            "(4) The physical properties of water and steam saturated at T_vc"
            AS.update(CP.QT_INPUTS,1.0,self.T_vc)
            self.p_vc = AS.p()

            # Thermosyphon vapour pressure drop
            self.Dp_v = fnc.ThermosyphonVapourPressureDrop(self.fluid,self.T_vc,self.Qdot,self.D_i,self.L_eff)
            self.p_ve = self.p_vc+self.Dp_v
            AS.update(CP.PQ_INPUTS,self.p_ve,0.0)
            self.T_ve = AS.T()
            rho_l = AS.rhomass()

            "(5) Temperature difference due to hydrostatic head"
            self.p_p = self.p_ve+rho_l*9.8065*self.F_r*self.L_e*np.sin(self.beta)  # the pressure at the bottom of the pool
            AS.update(CP.PQ_INPUTS,self.p_p,0.0)
            self.T_p = AS.T()  # the temperature at the bottom of the pool
            # The mean temperature difference due to the hydrostatic head
            self.DeltaT_h = (self.T_p-self.T_vc)*self.F_r/2.0
            # (6) By definition, the effective overall temperature difference is
            self.DeltaT_eff=self.T_eo-self.T_co-self.DeltaT_h

            # (13) Repeating the calculation in steps (8) to (12) gives
            self.R_ei = fnc.BoilingThermalResistanceESDU(self.fluid,self.Qdot,self.D_i,self.L_e,self.T_ve,self.F_r)
            self.R_ci = fnc.CondThermalResistanceESDU(self.fluid,self.Qdot,self.T_vc,self.D_i,self.L_c)
            "Additional thermal resistances"
            h_lv_e = PropsSI('H','P',self.p_ve,'Q',1.0,self.fluid)-PropsSI('H','P',self.p_ve,'Q',0.0,self.fluid)
            h_lv_c = PropsSI('H','P',self.p_vc,'Q',1.0,self.fluid)-PropsSI('H','P',self.p_vc,'Q',0.0,self.fluid)
            self.R4 = (8314.34*self.T_ve**2*(2*pi*8314.34*self.T_ve)**(0.5))/(h_lv_e**2*self.p_ve*self.A_eo)  # Marcia BHM. Thermosyphon Technology for Industrial Applications.  Heat Pipes and Solid Sorption Transformations: CRC Press; 2013. p. 411-64.
            self.R5 = (self.T_ve-self.T_vc)/self.Qdot
            self.R6 = (8314.34*self.T_vc**2*(2*pi*8314.34*self.T_vc)**(0.5))/(h_lv_c**2*self.p_vc*self.A_co)

            # (12) Adding the internal thermal resistance claculated in steps (8) to (11) to approximate total thermal
            # thermal resistance calculated in steps (1) to (3) gives
            self.R_tot = self.R_eo+self.R_co+1/(1/(self.R_we+self.R_wc+self.R_ei+self.R_ci+self.R4+self.R5+self.R6)+1/self.R_axial)
            Qdot_resid=abs(self.Qdot - self.DeltaT_eff/self.R_tot)

        [self.Qdot_ent,self.Qdot_boil,self.Qdot_son]= fnc.thermosyphon_operatinglimits(self.fluid,self.D_i,self.L_e,self.T_ve,self.Qdot)



if __name__=='__main__':
    # this runs if you run this file directly
    params = {
        'L_a': 0.1,
        'L_e': 2.8,
        'L_c': 1.7,
        'D_o': 50.0e-3,
        't_pipe': 2.4e-3,
        'F_r': 1.5 / 2.8,
        'beta': pi / 2.0,
        'k_pipe': 48,
        'A_eo': 3.26,
        'A_co': 3.08,
        'h_eo': 31,
        'h_co': 37,
        'T_eo': 186 + 273.15,
        'T_co': 27 + 273.15,
        'fluid': 'Water',
        'Backend': 'TTSE&HEOS'
    }
    def f(D_o):
        params = {
            'L_a': 0.1,
            'L_e': 2.8,
            'L_c': 1.7,
            'D_o': D_o,
            't_pipe': 2.4e-3,
            'F_r': 1.5 / 2.8,
            'beta': pi / 2.0,
            'k_pipe': 48,
            'A_eo': 3.26,
            'A_co': 3.08,
            'h_eo': 31,
            'h_co': 37,
            'T_eo': 186 + 273.15,
            'T_co': 27 + 273.15,
            'fluid': 'Water',
            'Backend': 'TTSE&HEOS'
        }
        Thermosyphon = ThermosyphonClass(**params)
        Thermosyphon.Calculate()
        goal = -Thermosyphon.Qdot
        return goal

    D_o_0 = 60e-3
    res = optimize.fminbound(f,20e-3,90e-3)
    print(res)

