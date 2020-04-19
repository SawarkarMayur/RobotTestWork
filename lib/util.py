import os
from robot.libraries import BuiltIn

def getSuiteSrcDir():
        from robot.api import logger as log
        builtin = BuiltIn.BuiltIn()
        srcPath = builtin.get_variable_value('${SUITE SOURCE}')
        if os.path.isfile(srcPath):
            srcDir = os.path.dirname(srcPath)
        elif os.path.isdir(srcPath):
            srcDir = srcPath
        else:
            log.error("Suite source directory not found; src={0}".format(srcPath))
            srcDir = ''
        return srcDir

def hi():
     return 'Hello'