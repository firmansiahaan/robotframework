*** Settings ***
Documentation    Suite for dropdown selection
Library    SeleniumLibrary
Suite Setup    Open Browser To Radio Button Page
Suite Teardown    Close Browser


*** Variables ***
${BROWSER}    firefox
${URL}    file:///D:/Firman/Programming/robotframework/robotframework/html/dropdown.html


*** Test Cases ***
Select Option From Dropdown
    [Documentation]    This test case selects an option from the dropdown and verifies that it is selected.
    Select From List By Value    name=months    May
    List Selection Should Be    name=months    May
    Select From List By Value   name=days    19
    List Selection Should Be    name=days    19
    Select From List By Value   name=year    1
    List Selection Should Be    name=year    1


*** Keywords ***
Open Browser To Radio Button Page
    [Documentation]    This keyword opens the browser and navigates to the dropdown page.
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
