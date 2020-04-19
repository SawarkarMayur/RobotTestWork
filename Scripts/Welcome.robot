*** Settings ***
#Resource  ../Resources/Keywords/GenericKW.robot
Library  ../lib/util.py

*** Test Cases ***

Get the Suite Source directory
    [Tags]  tc
     ${path}  getSuiteSrcDir
     log  ${path}



