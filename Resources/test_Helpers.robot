*** Settings ***

Library    SeleniumLibrary
Variables    ../AppObjects_Repo/Locators.py
*** Variables ***

*** Keywords ***

LoadTestApp
    [Arguments]    ${TestUrl}       ${Browser}
    open browser    ${TestUrl}     ${Browser}
    maximize browser window
TestClosure
    close all browsers
SwitchToBottomFrame
    [Arguments]    ${Txt_FrameTitle}
    select frame    ${Obj_Frame}
    current frame should contain    ${Txt_FrameTitle}
ModalButonClick
    [Arguments]    ${Delay_Window}
    wait until element is visible    ${Btn_Modal}      ${Delay_Window}
    click element    ${Btn_Modal}
IterationForModal
    @{ListofElement}=   get webelements     ${Obj_FrameContainer}
    FOR    ${element}    IN    @{ListofElement}
        ${text}=        Get Element Attribute   ${element}      id
        ${contains}=  Evaluate   "${Obj_Modal_Win1}" in """${text}"""
        IF      ${contains}
            ${validate}=  Evaluate    "${Obj_Modal_Win4}" == """${text}"""
            exit for loop if    ${validate}
            click element       ${element}
            log to console    ${text}
        END
    END