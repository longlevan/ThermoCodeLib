



class HeatPipeClass:
    def __init__(self,**kwargs):
        self.__dict__.update(kwargs)

    def Update(self,**kwargs):
        self.__dict__.update(kwargs)

    def OutputList(self):
        """
        Return a list of parameters for this component for further output
        """
        return [

        ]