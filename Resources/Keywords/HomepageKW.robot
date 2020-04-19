*** Settings ***
Resource  GenericKW.robot
Resource  ../OR/Homepage.txt

*** Keywords ***

Navigate to Homepage
    Launch Browser
    Maximize Browser Window
    Wait Until Page Contains Element   ${menu}  10


Search text
    [Arguments]  ${tobesearch}
    Wait Until Page Contains Element  ${Searchtxtbox}  10
    Click Element  ${Searchtxtbox}
    Input Text  ${Searchtxtbox}  ${tobesearch}

