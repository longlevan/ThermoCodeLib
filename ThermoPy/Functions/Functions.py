import numpy as np
import scipy as sp
import csv as csv
import pandas as pd
from pandas import DataFrame, Series
import math
from math import pi
import matplotlib.pyplot as plt
import CoolProp
import CoolProp.CoolProp as CP
from CoolProp.CoolProp import PhaseSI,PropsSI, get_global_param_string
from scipy.optimize import fsolve
"~~~~~~~~~~~~~~~~~~"
def rlmtd(T_hf_su,T_hf_ex,T_cf_su,T_cf_ex):
    """
    :param T_hf_su: inlet temperature of hot fluid [K]
    :param T_hf_ex: outlet temperature of hot fluid [K]
    :param T_cf_su: inlet temperature of cold fluid [K]
    :param T_cf_ex: outlet temperature of cold fluid [K]
    :return: logarithmic mean temperature difference [K]
    """
    xi = 1e3
    if T_cf_su < (T_hf_ex-1):
        if T_cf_ex < T_hf_su-1:
            if (T_hf_su-T_cf_ex)!= (T_hf_ex-T_cf_su):
                return ((T_hf_su - T_cf_ex) - (T_hf_ex - T_cf_su))/np.log((T_hf_su-T_cf_ex)/(T_hf_ex-T_cf_su))
            else:
                return T_hf_su - T_cf_ex
        else:
            return (T_hf_ex - T_cf_su - 1)/np.log(T_hf_ex - T_cf_su) * 1/(1 + xi*(T_cf_ex + 1 - T_hf_su))
    else:
        if T_cf_ex < T_hf_su-1:
            return (T_hf_su - T_cf_ex - 1)/np.log(T_hf_su - T_cf_ex) * 1/(1+xi*(T_cf_su + 1 - T_hf_ex))
        else:
            return 1/( (1+xi * (T_cf_su + 1 - T_hf_ex)) * (1 + xi*(T_cf_ex + 1 - T_hf_su)))

def ThermosyphonVapourPressureDrop(Fluid,T_sat,Q_dot,D_v,L_a):
    """
    :param Fluid: working fluid of thermosyphon, e.g. water
    :param T_sat: saturated temperature [K]
    :param Q_dot: heat transfer rate [W]
    :param D_v: diameter [m]
    :param L_a: adiabatic section length [m]
    :return: vapour pressure drop of working fluid inside thermosyphon [Pa]
    """
    A_v = (np.pi*D_v**2)/4
    P_sat = PropsSI('P','T',T_sat,'Q',0,Fluid)
    rho_v = PropsSI('D','T',T_sat,'Q',1,Fluid)
    mu_v = PropsSI('V','T',T_sat,'Q',1,Fluid)
    h_lv = PropsSI('H','T',T_sat,'Q',1,Fluid)-PropsSI('H','T',T_sat,'Q',0,Fluid)
    Re_a = Q_dot*D_v/(mu_v*A_v*h_lv)

    if Re_a<2300:
        return (32*mu_v*Q_dot*L_a)/(rho_v*A_v*h_lv*D_v**2)
    else:
        return (0.3164/Re_a**0.25)*(Q_dot**2*L_a)/(2*rho_v*A_v**2*h_lv**2*D_v)

def CondFiugreOfMerit(Fluid,T_sat):
    """
    :param Fluid: working fluid of thermosyphon
    :param T_sat: saturated temperature [K]
    :return:
    """
    P_sat = PropsSI('P','T',T_sat,'Q',0,Fluid)
    k_l = PropsSI('L','T',T_sat,'Q',0,Fluid)
    rho_l = PropsSI('D','T',T_sat,'Q',0,Fluid)
    mu_l= PropsSI('V','T',T_sat,'Q',0,Fluid)
    h_lv= PropsSI('H','T',T_sat,'Q',1,Fluid) - PropsSI('H','T',T_sat,'Q',0,Fluid)
    return ((h_lv*k_l**3*rho_l**2)/mu_l)**(1/4)

def BoilingFigureOfMerit(Fluid,T_sat):
    P_sat 	= PropsSI('P','T',T_sat,'Q',0,Fluid)
    P_atm	= 101325 # [Pa]
    k_l 	= PropsSI('L','T',T_sat,'Q',0,Fluid)
    rho_l	= PropsSI('D','T',T_sat,'Q',0,Fluid)
    rho_v	= PropsSI('D','T',T_sat,'Q',1,Fluid)
    mu_l	= PropsSI('V','T',T_sat,'Q',0,Fluid)
    cp_l	= PropsSI('C','T',T_sat,'Q',0,Fluid)
    h_lv	= PropsSI('H','T',T_sat,'Q',1,Fluid) - PropsSI('H','T',T_sat,'Q',0,Fluid)
    return (0.32*rho_l**0.65*k_l**0.3*cp_l**0.7)/(rho_v**0.25*h_lv**0.4*mu_l**0.1)*(P_sat/P_atm)**0.23

def CondThermalResistanceESDU(Fluid,Q,T_sat,D,L_c):
    P_sat = PropsSI('P','T',T_sat,'Q',0,Fluid)
    h_lv = PropsSI('H','T',T_sat,'Q',1,Fluid) - PropsSI('H','T',T_sat,'Q',0,Fluid)
    mu_l = PropsSI('V','T',T_sat,'Q',0,Fluid)
    Re_f = 4*Q/(h_lv*mu_l*np.pi*D)
    phi_cond = CondFiugreOfMerit(Fluid,T_sat)
    g=9.8065
    R_ESDU	= 0.235*Q**(1/3)/(D**(4/3)*g**(1/3)*L_c*phi_cond**(4/3))
    if (Re_f > 1300):
        print("The value of Re_f is larger than 1300")
        return R_ESDU*191*Re_f**(-0.733)
    elif (Re_f<50):
        print("These equations are not applicable for Re_f < 50, the value of R is assiged as R_ESDU")
        return R_ESDU
    else:
        print("The value of Re_f is greater than 50 and lower than 1300")
        return R_ESDU


def BoilingThermalResistanceESDU(Fluid,Q,D,L_e,T_sat,F_r):
    """
    Fluid		: thermosyphon working fluid
    Q		: heat transfer rate [W]
    D		: diameter [m]
    L_e	: evaporator length [m]
    T_sat	: saturated temperature
    F		: liquid fill = fraction of evaporator covered by static pool
    http://www.sciencedirect.com/science/article/pii/S1359431112007089
    """
    Phi_cond = CondFiugreOfMerit(Fluid,T_sat)
    Phi_boil= BoilingFigureOfMerit(Fluid,T_sat)
    g = 9.8065
    R_film = 0.235*Q**(1/3)/(D**(4/3)*g**(1/3)*L_e*Phi_cond**(4/3))
    R_pool 	= 1/(Phi_boil*g**0.2*Q**0.4*(np.pi*D*L_e)**(0.6))
    if (R_film>R_pool):
        return R_pool
    else:
        return R_pool*F_r+R_film*(1-F_r)

def pool_boiling_correlations(correlation_name,Fluid,T_sat,q_flux):
    # Addapted frome EES files
    p_atm = 101325 # ambient pressure in Pa
    P_sat = PropsSI('P','T',T_sat,'Q',0,Fluid)
    p_r = P_sat/PropsSI("Pcrit",'',0,'',0,Fluid)
    rho_l = PropsSI('D','T',T_sat,'Q',0,Fluid)
    rho_v = PropsSI('D','T',T_sat,'Q',1,Fluid)
    mu_l = PropsSI('V','T',T_sat,'Q',0,Fluid)
    mu_v = PropsSI('V','T',T_sat,'Q',1,Fluid)
    k_l = PropsSI('L','T',T_sat,'Q',0,Fluid)
    MM = PropsSI('M','',0,'',0,Fluid)*1000 # fluid molar mass in kg/kmol
    cp_l = PropsSI('C','T',T_sat,'Q',0,Fluid)
    h_lv = PropsSI('H','T',T_sat,'Q',1,Fluid)-PropsSI('H','T',T_sat,'Q',0,Fluid)
    # Pool boiling heat transfer coefficient
    if correlation_name=='Imura':
        return 0.32*((rho_l**0.65*k_l**0.3*cp_l**0.7*9.8065**0.2*q_flux**0.4)/(rho_v**0.25*h_lv**0.4*mu_l**0.1))*(P_sat/p_atm)**0.3 # Imura correlation
    elif correlation_name=='Cooper':
        return 55*MM**(-0.5)*q_flux**0.67*(p_r)**0.12*(-np.log10(p_r))**(-0.55)# Cooper correlation
    else:
        return 0.106*(PropsSI('Pcrit','',0,'',0,Fluid)/1e5)**0.69*(1.8*p_r**0.17+4*p_r**1.2+10*p_r**10)*q_flux**0.7 # "Mostinski correlation"

def Thermosyphon(Fluid,L_a,L_c,L_e,D_o,D_i,F_r,h_eo,k_wall,h_co,T_eo,T_co):
    # Step 1: Design parameter specification
    L_eff=L_a+(L_c+L_e)/2 # thermosyphon effective length
    A_eo=np.pi*L_e*D_o # evaporator external area
    A_ei=np.pi*L_e*D_i # evaporator internal area
    A_co=np.pi*L_c*D_o # condenser external area
    A_ci=np.pi*L_c*D_i # Condenser internal cross-sectional area
    A_axial=np.pi/4*(D_o**2-D_i**2) # tube annuli cross-sectional area
    # Step 2: Determine thermal resistance
    R_eo =1/(A_eo*h_eo) # Evaporator external thermal resistance
    R_we=np.log(D_o/D_i)/(2*np.pi*L_e*k_wall)# evaporator wall thermal resistance
    R_wc=np.log(D_o/D_i)/(2*np.pi*L_c*k_wall)# condenser wall thermal resistance
    R_co = 1/(A_co*h_co)# condenser external thermal resistance
    R_axial = L_eff/(k_wall*A_axial) # tube axial thermal resistance
    # set of equation
    def f(x):
        # Qdot_rad: x[0]
        # T_we_o: x[1]
        # T_we_i: x[2]
        # Tsat_e: x[3]
        # T_wc_i: x[4]
        # T_wc_o: x[5]
        print('.')
        Psat_e = PropsSI('P','T',x[3],'Q',1,Fluid)
        DeltaP_v = ThermosyphonVapourPressureDrop(Fluid,x[3],x[0],D_i,L_eff)
        Psat_c = Psat_e-DeltaP_v
        Tsat_c = PropsSI('T','P',Psat_c,'Q',1,Fluid)
        R_ei = BoilingThermalResistanceESDU(Fluid,x[0],D_i,L_e,x[3],F_r)
        R_ci = CondThermalResistanceESDU(Fluid,x[0],Tsat_c,D_i,L_c)
        T_we = (x[1]+x[2])/2
        T_wc = (x[4]+x[5])/2
        Qdot_axial = (T_we-T_wc)/R_axial
        return [
            x[0]+Qdot_axial-(T_eo-x[1])/R_eo,
            x[0]-(x[1]-x[2])/R_we,
            x[0]-(x[2]-x[3])/R_ei,
            x[0]-(Tsat_c-x[4])/R_ci,
            x[0]-(x[4]-x[5])/R_wc,
            x[0]+Qdot_axial-(x[5]-T_co)/R_co
            ]
    [Qdot_rad,T_we_o,T_we_i,Tsat_e,T_wc_i,T_wc_o]=fsolve(f,[1.0e3,500.0+273,250+273.0,180.0+273.15,170.0+273.15,150.0+273.15],ytol=1e-6)
    return Qdot_rad, T_we_o,T_we_i,Tsat_e,T_wc_i,T_wc_o

def thermosyphon_operatinglimits(fluid,D,L,T_sat,Qdot):
    P_sat = PropsSI('P','T',T_sat,'Q',0,fluid)
    h_lv  = PropsSI('H','T',T_sat,'Q',1,fluid)-PropsSI('H','T',T_sat,'Q',0,fluid)
    rho_l = PropsSI('D','T',T_sat,'Q',0,fluid)
    rho_v = PropsSI('D','T',T_sat,'Q',1,fluid)
    sigma = PropsSI('I','T',T_sat,'Q',0,fluid)
    A_v = (pi*D**2)/4
    Qdot_ent = 3.2*h_lv*A_v*(rho_v**(-0.25)+rho_l**(-0.25))**(-2)*(sigma*9.8065*(rho_l-rho_v))**(0.25)
    Qdot_boil= (pi*D*L)*0.149*rho_v*h_lv*((sigma*(rho_l-rho_v)*9.8065)/rho_v**2)**(0.25)
    Qdot_son =  0.474*A_v*h_lv*(rho_v*P_sat)**(0.5)
    return Qdot_ent,Qdot_boil,Qdot_son


