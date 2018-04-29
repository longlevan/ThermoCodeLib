
import CoolProp as CP
from CoolProp.CoolProp import PropsSI



class HXClass():
    """
    There are a number of possibilities
    Each fluid can
    - Single phase
    - Evaporation
    - Condensation

    Possibility matrix
    """
    def __init__(self,**kwargs):
        self.__dict__.update(kwargs)

    def Update(self,**kwargs):
        self.__dict__.update(kwargs)

    def OuputList(self):
        return [

        ]

    def DetermineHTBounds(self):
        # see if each phase could change phase if it were to reach the inlet temperature of the opposite phase
        # AbstractState
        AS_H = self.AS_H
        AS_C = self.AS_C

        # Inlet phases


        # Find the maximum possible rate of heat transfer as the minimum of taking each stream to the inlet temperature of the other stream
        AS_H.update(CP.PT_INPUTS,self.p_in_H,self.T_in_C)
        hout_H_min = AS_H.hmass()
        AS_C.update(CP.PT_INPUTS,self.p_in_C,self.T_in_H)
        hout_C_max = AS_C.hmass()
        Qdot_max = min([self.mdot_C*(hout_C_max-self.hin_C),self.mdot_H*(self.hin_H-hout_H_min)])



