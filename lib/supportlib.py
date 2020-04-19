import  os
from AppiumLibrary import AppiumLibrary
from Selenium2Library import Selenium2Library
from robot.libraries import BuiltIn


class supportlib(Selenium2Library):

    def get_title(self):
        driver= self._current_application()
        title = driver.title()
        return title


    def getWinSize(self):
        driver = self._current_application()
        window_size = driver.get_window_size()


