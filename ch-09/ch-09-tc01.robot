*** Settings ***
Documentation     This is a test suite for testing the login functionality of the application.
Library           SeleniumLibrary
Suite Setup       Open Browser To Login Page
Suite Teardown    Close Browser


*** Variables ***
${BROWSER}        firefox
${URL}            https://yandex.com/


*** Test Cases ***
Type In Search Box And Verify Results
    [Documentation]    This test case types a query in the search box and verifies that the results are displayed.
    Input Text    id=text    Robot Framework
    # Double Click Element    id=text
    Press Keys    id=text    ENTER
    Wait Until Page Contains Element    id=search-result-fast-nav
    Page Should Contain Element         id=search-result-fast-nav
    Sleep    5s


*** Keywords ***
Open Browser To Login Page
    [Documentation]    This keyword opens the browser and navigates to the login page.
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
