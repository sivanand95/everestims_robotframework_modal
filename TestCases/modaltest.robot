*** Settings ***

Library    SeleniumLibrary
Resource    ../Resources/modaltest_helpers.robot

Suite Setup     LoadTestApp
Suite Teardown    TestClosure

*** Variables ***
${FB_UserName}      sivanand95@gmail.com
${FB_Password}      xxxz


*** Test Cases ***
LoginScenario
    SwitchToFrame

