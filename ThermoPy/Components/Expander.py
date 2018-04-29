import CoolProp as CP
from CoolProp.CoolProp import PropsSI
from scipy.optimize import fsolve
import time

class ExpanderClass():
    def __init__(self,**kwargs):
        self.__dict__.update(kwargs)

    def Update(self,**kwargs):
        self.__dict__.update(kwargs)


    def OutputList(self):

        return [

        ]

    def Calculate(self):
        Medium = self.Medium  # pump working medium

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

        AS.update(CP.HmassP_INPUTS, self.h_in, self.p_in)
        T_in = AS.T()
        s_in = AS.smass()
        rho_in = AS.rhomass()

        AS.update(CP.PSmass_INPUTS, self.p_out, s_in)
        h_out_s = AS.hmass()  # isentropic outlet enthalpy


        if self.ModelType=='CstEff':
            N_rpm = 60*self.mdot/(self.V_swept*self.FF*rho_in)
            self.Wdot = self.mdot*(self.h_in - h_out_s)*self.eff_is
            self.Qdot_amb = max(0,AU*(T_in-self.T_amb))
            self.h_out = self.h_in - (self.Wdot+self.Qdot_amb)/self.mdot
            self.N_rpm = N_rpm

        elif self.ModelType == 'PolyEff':
            def PolEffInverted(x):
                N_rpm = x
                P = self.p_in / self.p_out

                if len(self.CoeffPoly_ff) == 6:
                    # if expander with constant speed --> quadratic function of Rp and rho_in
                    FF = max(0.2, min(self.CoeffPoly_ff[0] + self.CoeffPoly_ff[1] * P + self.CoeffPoly_ff[2] * rho_in +
                                      self.CoeffPoly_ff[3] * P ** 2 + self.CoeffPoly_ff[4] * P * rho_in +
                                      self.CoeffPoly_ff[5] * rho_in ** 2, 5))
                elif len(self.CoeffPoly_ff) == 10:
                    FF = max(0.2, min(self.CoeffPoly_ff[0] + self.CoeffPoly_ff[1] * P + self.CoeffPoly_ff[2] * rho_in +
                                      self.CoeffPoly_ff[3] * P ** 2 + self.CoeffPoly_ff[4] * P * rho_in +
                                      self.CoeffPoly_ff[5] * rho_in ** 2 + self.CoeffPoly_ff[6] * N_rpm +
                                      self.CoeffPoly_ff[7] * N_rpm ** 2 + self.CoeffPoly_ff[8] * N_rpm * P +
                                      self.CoeffPoly_ff[9] * P * rho_in,5))

                N_rpm_bis = 60 * self.mdot / (self.V_swept * FF * rho_in)
                res = 1 - N_rpm / N_rpm_bis
                return res

            x0 = 60*self.mdot/(self.V_swept*rho_in)
            N_rpm = fsolve(PolEffInverted,x0,xtol=1e-10)

            P = self.p_in/self.p_out

            if len(self.CoeffPoly_ff)==6:
                # If expander with constant speed --> quadratic function of Rp (pressure ratio) and rho_in
                FF = max(0.2, min(self.CoeffPoly_ff[0] + self.CoeffPoly_ff[1] * P + self.CoeffPoly_ff[2] * rho_in +
                                      self.CoeffPoly_ff[3] * P ** 2 + self.CoeffPoly_ff[4] * P * rho_in +
                                      self.CoeffPoly_ff[5] * rho_in ** 2, 10))
            elif len(self.CoeffPoly_ff)==10:
                # If expander with variable speed --> quadratic function of Rp, rho_in and N_rpm
                FF = max(0.2, min(self.CoeffPoly_ff[0] + self.CoeffPoly_ff[1] * P + self.CoeffPoly_ff[2] * rho_in +
                                      self.CoeffPoly_ff[3] * P ** 2 + self.CoeffPoly_ff[4] * P * rho_in +
                                      self.CoeffPoly_ff[5] * rho_in ** 2 + self.CoeffPoly_ff[6] * N_rpm +
                                      self.CoeffPoly_ff[7] * N_rpm ** 2 + self.CoeffPoly_ff[8] * N_rpm * P +
                                      self.CoeffPoly_ff[9] * P * rho_in,10))

            if len(self.CoeffPoly_is)==6:
                eff_is = max(0.01, min(self.CoeffPoly_is[0] + self.CoeffPoly_is[1] * P + self.CoeffPoly_is[2] * rho_in +
                                      self.CoeffPoly_is[3] * P ** 2 + self.CoeffPoly_is[4] * P * rho_in +
                                      self.CoeffPoly_is[5] * rho_in ** 2, 1))
            elif len(self.CoeffPoly_is)==10:
                eff_is=max(0.01, min(self.CoeffPoly_is[0] + self.CoeffPoly_is[1] * P + self.CoeffPoly_is[2] * rho_in +
                                      self.CoeffPoly_is[3] * P ** 2 + self.CoeffPoly_is[4] * P * rho_in +
                                      self.CoeffPoly_is[5] * rho_in ** 2 + self.CoeffPoly_is[6] * N_rpm +
                                      self.CoeffPoly_is[7] * N_rpm ** 2 + self.CoeffPoly_is[8] * N_rpm * P +
                                      self.CoeffPoly_is[9] * P * rho_in,1))

            self.Wdot = self.mdot*(self.h_in-h_out_s)*eff_is
            self.Qdot_amb = max(0,AU*(T_in-self.T_amb))
            self.h_out = self.h_in - (self.Wdot + self.Qdot_amb)/self.mdot
            self.FF = FF
            self.eff_is = eff_is

        elif self.ModelType =='SemiEmp':
            if not hasattr(self,'alpha'):
                self.alpha=0

            if not hasattr(self,'Wdot_loss0'):
                self.Wdot_loss0=0

            if not hasattr(self,'C_loss'):
                self.C_loss=0

            if not hasattr(self,'d_in'):
                self.d_in = 1.0e2

            if not hasattr(self,'A_leak0'):
                self.A_leak0 = 0

            if not hasattr(self,'AU_in_n'):
                self.AU_in_n = 0

            if not hasattr(self,'AU_out_n'):
                self.AU_out_n = 0

            if not hasattr(self,'AU'):
                self.AU = 0



        elif self.ModelType =='UGent':
            self.v_in = 1.0/rho_in # expander inlet

            "Filling factor"
            self.Rp = self.p_in/self.p_out # pressure ratio

        else:
            raise ValueError('Error:')



if __name__=='__main__':

    params = {
        'Backend':'HEOS',
        'Medium':'R134a',
        'mdot':0.15982,
        'FF':1.2,
        'eff_is':0.7,
        'h_in':5.6657e5,
        'p_in':5.0753e6,
        'p_out':2.4713e5,
        'N_rpm':5.3017e3,
        'T_amb':298.15,
        'ModelType':'PolyEff',
        'CoeffPoly_ff': [1.122789891166860,-0.050184374872146,-0.000000109428161,0.001845567200683,0.000000026842863,0.000000000000043],
        'CoeffPoly_is':[1.504191277585839,0.051680226738587,-0.000001018959447,-0.020713559079583,0.000000031728135,0.000000000000223],
        'AU': 0.674005126953125,
        'V_swept':1.279908675799087e-05,
        'V':1.492257e-3
    }

expander = ExpanderClass(**params)
expander.Calculate()

s_in = PropsSI('S','P',5.0753e6,'H',5.6657e5,'R134a')
h_out_s = PropsSI('H','P',2.4713e6,'S',s_in,'R134a')
Wdot = 0.15982*(5.6657e5-h_out_s)*0.7
print(expander.Wdot,expander.eff_is,expander.T_in,expander.Qdot_amb,expander.N_rpm,expander.FF)






