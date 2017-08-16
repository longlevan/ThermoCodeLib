"""
This file is used to store a base class that holds the docstrings for commonly used class members like Update, OutputList, etc...
This if a copy from ACHP
"""
class BaseDocClass():
    def __init__(self,**kwargs):
        """Load up the parameters passed in using the dictionary"""
        pass

    def Update(self,**kwargs):
        """Update the parameters passed in using the dictionary"""
        pass

    def OutputList(self):
        """
        Return a list of parameters for this component for further output
         Its is a list of tuples, and each tuple is formed of items with indices:
            [0] Description of value

            [1] Units of value

            [2] The value itself
        """
        pass

    def Calculate(self):
        """
        """
        pass