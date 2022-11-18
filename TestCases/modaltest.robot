*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/test_Helpers.robot
Suite Setup     LoadTestApp     ${TestUrl}      ${Browser}
Suite Teardown      TestClosure

*** Variables ***

${TestUrl}      https://codepen.io/maouida/pen/NPGaaN
${Browser}      chrome
${Txt_Frame_Title}  Stack Bootstrap modals nicely
${Window_Delay}     1200

*** Test Cases ***
traverseThroughModalWindow
    SwitchToBottomFrame     ${Txt_Frame_Title}
    ModalButonClick     ${Window_Delay}
    IterationForModal

