*** Settings ***
Documentation  Homepage Test Cases
...     Using Robot and Selenium Library

Resource   ../Resources/Keywords/HomepageKW.robot
#Test Setup
Test Teardown  Close All Browsers

*** Test Cases ***

TC-01 Validate Homepage launch successfully
    [Documentation]  This is a test case level documentation
    [Tags]  home
    Navigate to Homepage
    ${title}  get title
    should contain  ${title}  Online Shopping site in India
    Capture Page Screenshot


TC-02 Search in required item
    [Tags]  search
    Navigate to Homepage
    Search text  Xbox 360


