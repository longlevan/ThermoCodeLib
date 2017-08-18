import numpy as np
from math import pi
from scipy.optimize import fsolve, broyden1,broyden2
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
        # AbstractState
        if hasattr(self,'Backend'): # check if backend is given
            AS = CP.AbstractState(self.Backend,self.fluid)
        else: # Otherwise, use the default backend
            AS = CP.AbstractState('HEOS',self.fluid)
        self.AS = AS

        self.L_eff = self.L_a+(self.L_e+self.L_c)/2 # thermosyphon effective length

        # (1) Thermal resistance of gas and air
        self.R_eo = 1/(self.A_eo*self.h_eo) # gas thermal resistance
        self.R_co = 1/(self.A_co*self.h_co) # air thermal resistance

        # (2) Thermosyphon internal diameter
        self.D_i = self.D_o-2*self.t_pipe

        # The wall thermal resistances
        self.R_we = np.log(self.D_o/self.D_i)/(2*pi*self.L_e*self.k_pipe)
        self.R_wc = np.log(self.D_o/self.D_i)/(2*pi*self.L_c*self.k_pipe)

        # (3) Neglecting the internal resistance, the total thermal resistance
        self.R_tot = self.R_eo+self.R_co+self.R_we+self.R_wc

        # The vapour temperature is
        self.T_v = self.T_co+(self.R_wc+self.R_co)/self.R_tot*(self.T_eo-self.T_co)

        # (4) The physical properties of water and steam saturated at T_v
        AS.update(CP.QT_INPUTS,1.0,self.T_v)
        self.p_v = AS.p() #PropsSI('P','T',self.T_v,'Q',1,self.fluid)
        rho_v = AS.rhomass() #rho_v = PropsSI('D','T',self.T_v,'Q',1,self.fluid)

        AS.update(CP.QT_INPUTS,0.0,self.T_v)
        rho_l = AS.rhomass() #rho_l = PropsSI('D','T',self.T_v,'Q',0,self.fluid)
        mu_l = AS.viscosity() #PropsSI('V', 'T', self.T_v, 'Q', 0, self.fluid)  # liquid viscosity
        self.sigma = AS.surface_tension() # PropsSI('I', 'T', self.T_v, 'Q', 0, self.fluid)

        self.h_lv = PropsSI('H','T',self.T_v,'Q',1,self.fluid)-PropsSI('H','T',self.T_v,'Q',0,self.fluid)

        self.Phi_2 =fnc.CondFiugreOfMerit(self.fluid,self.T_v)

        # (5) the pressure at the bottom of the pool
        self.p_p =self.p_v+rho_l*9.8065*self.F_r*self.L_e

        AS.update(CP.PQ_INPUTS,self.p_p,0.0)
        self.T_p = AS.T() #PropsSI('T','P',self.p_p,'Q',0,self.fluid)

        # The mean temperature difference due to the hydrostatic head
        self.DeltaT_h = (self.T_p-self.T_v)*self.F_r/2

        # (6) By definition, the effective overall temperature difference is
        self.DeltaT_eff = self.T_eo-self.T_co-self.DeltaT_h

        # (7) The rate of heat transfer is
        self.Qdot = self.DeltaT_eff/self.R_tot

        # (8) the thermal resistance of the evaporating
        self.R_3f = (0.235*self.Qdot**(1/3))/(self.D_i**(4/3)*9.8065**(1/3)*self.L_e*self.Phi_2**(4/3))
        self.Re_f = 4*self.Qdot/(self.h_lv*mu_l*pi*self.D_i)
        self.Phi_3 = fnc.BoilingFigureOfMerit(self.fluid,self.T_v)
        self.R_3p = (self.Phi_3*9.8065**(0.2)*self.Qdot**(0.4)*(pi*self.D_i*self.L_e)**0.6)**(-1)

        # steps (8) to (11)
        self.R_ei = fnc.BoilingThermalResistanceESDU(self.fluid,self.Qdot,self.D_i,self.L_e,self.T_v,self.F_r)
        self.R_ci = fnc.CondThermalResistanceESDU(self.fluid,self.Qdot,self.T_v,self.D_i,self.L_c)

        # (12) Adding the internal thermal resistance claculated in steps (8) to (11) to approximate total thermal
        # thermal resistance calculated in steps (1) to (3) gives
        self.R_tot = self.R_tot+self.R_ei+self.R_ci
        # calculate again rate of heat transfer
        self.Qdot = self.DeltaT_eff/self.R_tot
        # (13) Repeating the calculation in steps (8) to (12) gives
        self.R_ei = fnc.BoilingThermalResistanceESDU(self.fluid,self.Qdot,self.D_i,self.L_e,self.T_v,self.F_r)
        self.R_ci = fnc.CondThermalResistanceESDU(self.fluid,self.Qdot,self.T_v,self.D_i,self.L_c)

        # (12) Adding the internal thermal resistance claculated in steps (8) to (11) to approximate total thermal
        # thermal resistance calculated in steps (1) to (3) gives
        self.R_tot = self.R_tot+self.R_ei+self.R_ci

        # calculate again rate of heat transfer
        self.Qdot = self.DeltaT_eff/self.R_tot
        # So far, it was assumed that effective thermal resistance due to pressure drop of the vapour, was negligible.
        # it is now necessary to check that there will be no limit on flow and no boiling crisis
        # (14)
        [self.Qdot_ent,self.Qdot_boil,self.Qdot_son]= fnc.thermosyphon_operatinglimits(self.fluid,self.D_i,self.L_e,self.T_v,self.Qdot)



if __name__=='__main__':
    # this runs if you run this file directly
    params={
        'L_a':0.1,
        'L_e':2.8,
        'L_c':1.7,
        'A_eo': 3.26,
        'A_co':3.08,
        'h_eo': 31,
        'h_co':37,
        'D_o': 50e-3,
        't_pipe':2.4e-3,
        'F_r':1.5/2.8,
        'k_pipe': 48,
        'T_eo':186+273.15,
        'T_co':27+273.15,
        'fluid':'Water',
        'Backend':'TTSE&HEOS'
    }
    Thermosyphon = ThermosyphonClass(**params)
    Thermosyphon.Calculate()
    print(Thermosyphon.OutputList())

    print('evaporator external thermal resistance', Thermosyphon.R_eo, 'K/W')
    print('air thermal resistance', Thermosyphon.R_co, 'K/W')
    print('evaporator wall thermal resistance', Thermosyphon.R_we, 'K/W')
    print('condenser wall thermal resistance', Thermosyphon.R_wc, 'K/W')
    print(Thermosyphon.R_tot)
    print(Thermosyphon.T_v - 273.15, Thermosyphon.p_v, Thermosyphon.h_lv, Thermosyphon.sigma, Thermosyphon.Phi_2,Thermosyphon.p_p, Thermosyphon.Qdot)
    print(Thermosyphon.R_ei, Thermosyphon.R_3f, Thermosyphon.Re_f, Thermosyphon.Phi_3, Thermosyphon.R_3p,Thermosyphon.R_ci)
    print(Thermosyphon.Qdot_ent, Thermosyphon.Qdot_boil, Thermosyphon.Qdot_son)
    print('**********************************')

    params = {
        'L_a': 0.1,
        'L_e': 1.8,
        'L_c': 1.7,
        'A_eo': 3.26,
        'A_co': 3.08,
        'h_eo': 31,
        'h_co': 37,
        'D_o': 50e-3,
        't_pipe': 2.4e-3,
        'F_r': 1.5 / 2.8,
        'k_pipe': 48,
        'T_eo': 186 + 273.15,
        'T_co': 27 + 273.15,
        'fluid': 'Toluene',
        'Backend': 'TTSE&HEOS'
    }
    Thermosyphon.Update(**params)
    Thermosyphon.Calculate()

    print('evaporator external thermal resistance',Thermosyphon.R_eo,'K/W')
    print('air thermal resistance',Thermosyphon.R_co,'K/W')
    print('evaporator wall thermal resistance',Thermosyphon.R_we,'K/W')
    print('condenser wall thermal resistance',Thermosyphon.R_wc,'K/W')
    print(Thermosyphon.R_tot)
    print(Thermosyphon.T_v-273.15,Thermosyphon.p_v,Thermosyphon.h_lv,Thermosyphon.sigma,Thermosyphon.Phi_2,Thermosyphon.p_p,Thermosyphon.Qdot)
    print(Thermosyphon.R_ei,Thermosyphon.R_3f,Thermosyphon.Re_f,Thermosyphon.Phi_3,Thermosyphon.R_3p,Thermosyphon.R_ci)
    print(Thermosyphon.Qdot_ent,Thermosyphon.Qdot_boil,Thermosyphon.Qdot_son)

