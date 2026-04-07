*** Settings ***
Documentation    Suite for radio button selection
Library    SeleniumLibrary
Suite Setup    Open Browser To Radio Button Page
Suite Teardown    Close Browser


*** Variables ***
${BROWSER}    firefox
${URL}    file:///d:/Firman/Programming/robot/tutorial/html/Radiobutton.html


*** Test Cases ***
Select Male Radio Button
    [Documentation]    This test case selects the male radio button and verifies that it is selected.
    # Click Element    xpath=//input[@name='gender' and @value='male']
    Select Radio Button    gender    male
    Radio Button Should Be Set To    gender    male

Select Female Radio Button
    [Documentation]    This test case selects the female radio button and verifies that it is selected.
    # Click Element    xpath=//input[@name='gender' and @value='female']
    Select Radio Button    gender    female
    Radio Button Should Be Set To    gender    female


*** Keywords ***
Open Browser To Radio Button Page
    [Documentation]    This keyword opens the browser and navigates to the radio button page.
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
