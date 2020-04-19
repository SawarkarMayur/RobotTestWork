*** Settings ***

Resource  ../Data/settings.txt
Library  Selenium2Library
Resource  HomepageKW.robot

#Optional libs for mobile automation
#Library  AppiumLibrary
#Library  ../../lib/supportlib.py

*** Variables ***

*** Keywords ***

Launch Browser
    Open Browser   url=${url}  browser=${browser}

Launch Application on device
   # Open Application	http://localhost:4723/wd/hub	platformName=Android	platformVersion=9  automationName=UiAutomator2	 deviceName=emulator	 appPackage=com.google.android.apps.messaging	 appActivity=com.google.android.apps.messaging.ui.ConversationListActivity
    Open Application    ${hub}   platformName=${os}   deviceName=${dev}  appPackage=${pkg}    automationName=uiautomator2   appActivity=${launchactivity}