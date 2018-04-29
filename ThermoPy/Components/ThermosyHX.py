from Components.Thermosyphon import ThermosyphonClass




class ThermosyHX(ThermosyphonClass):
    """

    Inputs:
    - Hot fluid: hot fluid medium, pressure, enthalpy and mass flow rate?
    - Cold fluid: cold fluid medium, pressure, enthalpy and mass flow rate?
    - Geometric parameters of heat exchanger:



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

        ]
    def Calculate(self):
        """

        :return:
        """


if __name__== '__main__':

    params = {

    }


