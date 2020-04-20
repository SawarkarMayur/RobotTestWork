*** Settings ***
Resource  GenericKW.robot
Resource  ../OR/Login.txt

*** Variables ***
${password}  Xyz#123

*** Keywords ***

Navigate to login page
    Click Element   ${menu}
    Wait Until Page Contains Element   ${mSignin}  5
    click element  ${mSignin}
    Wait Until Element Is Visible    ${loginheader}
    log  Login page opens Successfully

Login with Invalid user
    [Arguments]  ${user}
    input text  ${email_box}    ${user}
    click element   ${continue_btn}
    sleep  1
    input password  ${password}
    #Page Should Contain  There was a problem
    click element  ${pwd_box}
    Page Should Contain Element  ${pwd_incorrect}
    Capture Page Screenshot

Navigate to create account page
    ${IsButton}=  Run Keyword And Return Status  page should contain element  ${createAcc_btn}
    Run Keyword If  ${IsButton}  click element   ${createAcc_btn}
    Wait Until Page Contains Element    ${pwd_box}   5
    Page Should Contain  Create Account



