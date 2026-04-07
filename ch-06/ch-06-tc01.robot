*** Settings ***
Documentation     This is a test suite for testing the login functionality of the application.
Library    SeleniumLibrary


*** Variables ***
${NUMBER}    100


*** Test Cases ***
TC01 Maximize Browser Window
    [Documentation]    This test case to verify maximizing the browser window.
    Open Browser    https://www.tutorialspoint.com/index.htm    firefox
    Sleep    2s
    Maximize Browser Window
    Sleep    2s
    Log    Browser window has been maximized successfully.
    Sleep    2s
    Close Browser

TC02 Set variable value
    [Documentation]    This test case to verify setting a variable value.
    Log    The value of the variable is: ${NUMBER}
    ${a}    Set Variable    Hi
    Log    The value of the variable is: ${a}
    ${b}    Set Variable If    ${NUMBER} > 0    Yes    No
    Log    The value of the variable is: ${b}
