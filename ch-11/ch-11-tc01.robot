*** Settings ***
Documentation    Suite for checkbox selection
Library    SeleniumLibrary
Suite Setup    Open Browser To Radio Button Page
Suite Teardown    Close Browser


*** Variables ***
${BROWSER}    firefox
${URL}    file:///d:/Firman/Programming/robot/tutorial/html/checkbox.html


*** Test Cases ***
Select Car Checkbox
    [Documentation]    This test case selects the Car checkbox and verifies that it is selected.
    Select Checkbox    name=option1
    Checkbox Should Be Selected    option1

Select Bus Checkbox
    [Documentation]    This test case selects the Bus checkbox and verifies that it is selected.
    Select Checkbox    name=option2
    Checkbox Should Be Selected    option2

Select Train Checkbox
    [Documentation]    This test case selects the Train checkbox and verifies that it is selected.
    Select Checkbox    name=option3
    Checkbox Should Be Selected    option3

Select Airways Checkbox
    [Documentation]    This test case selects the Airways checkbox and verifies that it is selected.
    Select Checkbox    name=option4
    Checkbox Should Be Selected    option4


*** Keywords ***
Open Browser To Radio Button Page
    [Documentation]    This keyword opens the browser and navigates to the checkbox page.
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
