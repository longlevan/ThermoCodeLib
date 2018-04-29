from CoolProp.CoolProp import PropsSI
import CoolProp as CP
from math import sqrt


class PumpClass():
    """
    Medium: working medium
    p_in: inlet pressure
    h_in: inlet specific enthalpy

    """
    def __init__(self,**kwargs):
        self.__dict__.update(kwargs)

    def Update(self,**kwargs):
        self.__dict__.update(kwargs)

    def OutputList(self):
        return [

        ]
    def Calculate(self):

        Medium = self.Medium # pump working medium

        if hasattr(self,'Backend'): # check if backend is given
            AS = CP.AbstractState(self.Backend,Medium)
        else: # Otherwise, use the default backend
            AS = CP.AbstractState('HEOS',Medium)

        if hasattr(self,'hmin'):
            AS.update(CP.PT_INPUTS,5e4,253.15)
            hmin = AS.hmass()

        if hasattr(self,'hmax'):
            AS.update(CP.PT_INPUTS,4e6,500)
            hmax = AS.hmass()

        if hasattr(self,'AU'):
            AU = self.AU
        else:
            AU = 0

        AS.update(CP.HmassP_INPUTS,self.h_in,self.p_in)
        T_in = AS.T()
        s_in = AS.smass()
        rho_in = AS.rhomass()

        AS.update(CP.PSmass_INPUTS,self.p_out,s_in)
        h_out_s = AS.hmass() # isentropic outlet enthalpy

        if self.ModelType=='CstEff':
            self.mdot =  self.N_rpm/60.0*self.V_swept*self.eff_vol*rho_in # mass flow rate of working medium
            self.Wdot =  self.mdot*(h_out_s-self.h_in)/self.eff_is
            self.Qdot = AU*(T_in - self.T_amb)
            self.h_out = self.h_in+self.Wdot/self.mdot

        elif self.ModelType=='PolEff':
            C_is = self.Coeff_is
            C_vol = self.Coeff_vol
            P = self.p_out/self.p_in
            N = self.N_rpm/self.N_rpm_nom
            eff_is =max(0.01,min(C_is[0]+C_is[1]*P+C_is[2]*N+C_is[3]*P**2+C_is[4]*N*P+C_is[6]*N**2,1.0))
            eff_vol = max(0.01,min(C_vol[0]+C_vol[1]*P+C_vol[2]*N+C_vol[3]*P**2+C_vol[4]*N*P+C_vol[6]*N**2,1.0))
            self.mdot = self.N_rpm/60*self.V_swept*eff_vol*rho_in
            self.Wdot = max(0.0,self.mdot*(h_out_s-self.h_in)/eff_is)
            self.Qdot = AU*(T_in-self.T_amb)
            self.h_out = self.h_in + self.Wdot / self.mdot
            self.eff_is = eff_is
            self.eff_vol = eff_vol

        elif self.ModelType=='SemiEmp':
            A_leak = self.A_leak
            eta_cavitation = 1.0
            self.mdot = max(1.0e-3,eta_cavitation*((self.N_rpm/60*self.V_swept*rho_in)-(self.A_leak*sqrt(2*rho_in*(self.p_out-self.p_in)))))
            eff_vol = self.mdot/(self.N_rpm/60*self.V_swept*rho_in)
            self.Wdot = self.Wdot_loss+self.K0_loss*self.mdot/rho_in*(self.p_out-self.p_in)
            eff_is = self.mdot*(h_out_s-self.h_in)/self.Wdot
            self.Qdot = AU*(T_in-self.T_amb)
            self.h_out = self.h_in + self.Wdot / self.mdot
            self.eff_is = eff_is
            self.eff_vol = eff_vol

        elif self.ModelType=='UGent':
            # Local copies of coefficients
            W = self.W

            # Power

            # Compute the pressure difference between the outlet and the inlet of the pump
            self.Dp = self.p_out - self.p_in

            # Get the rated power for all pressure difference
            Wdot_rated = W[0]*self.Dp+W[1]

            # Speed ratio
            N_ratio = self.N/self.N_rated
            # Get the estimation of the power
            self.Wdot = (W[2]*N_ratio+W[3])*Wdot_rated

            # Mass flow rate
            # Define the slope of the line corresponding to the exhaust temperature as a linear interpolation of the minimum and maximum slop
            slope = (self.slope_max - self.slope_min)/(self.p_max-self.p_min)*(self.p_out-self.p_in)+self.slope_min

            # Define the intercept of the line corresponding to the exhaust temperature
            intercept = (self.intercept_max-self.intercept_min)/(self.p_max-self.p_min)*(self.p_out-self.p_in)+self.intercept_min

            self.mdot = slope*self.N+intercept

            # Outlet state
            self.h_out = self.h_in+self.Wdot/self.mdot



        else:
            raise ValueError('Error: type of pump model not valid')


if __name__=='__main__':
    params = {
        'Backend':'HEOS',
        'Medium':'R134a',
        'p_in':4.0001e5,
        'p_out':3.6510e6*3,
        'h_in':2.6676e5,
        'N_rpm':1500,
        'ModelType':'SemiEmp',
        'T_amb':298,
        'V_swept':1e-6,
        'V':1.4e-3,
        'A_leak':1e-7,
        'Wdot_loss':200,
        'K0_loss':0.2,
        'AU':1
    }

    pump = PumpClass(**params)
    pump.Calculate()
    print(pump.mdot,pump.eff_is,pump.Qdot)