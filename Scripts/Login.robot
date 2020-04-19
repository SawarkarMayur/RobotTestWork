*** Settings ***
Documentation  Login Test Cases
...     Using Robot and Selenium Library

Resource   ../Resources/Keywords/loginKW.robot
Test Setup     Navigate to Homepage
Test Teardown  Close All Browsers

*** Test Cases ***

TC 01 Test login with Invalid user
    [Tags]  login
    Navigate to login page
    Login with Invalid user    randomemail@gmail.com

TC 02 Create new user account
    [Tags]  login
    Navigate to login page
    Navigate to create account page
