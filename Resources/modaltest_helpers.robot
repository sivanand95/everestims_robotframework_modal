*** Settings ***
Library    SeleniumLibrary
Variables    ../Appobject_Repo/Locators.py

*** Keywords ***

LoadTestApp
    open browser    https://codepin.io/maoudia/pen/NPGaaN       chrome
    maximize browser window

SwitchToFrame
    select frame    ${Wnd_Frame}

LoginVerification
    page should contain    What's on your mind

TestClosure
    close all browsers


