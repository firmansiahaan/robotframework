*** Settings ***
Documentation     This is a test suite for testing the login functionality of the application.
Library    SeleniumLibrary
Suite Setup    Open Browser 
Suite Teardown    Close Browser


*** Variables ***
${NUMBER}    100
${NAME}      Robot Framework


*** Test Cases ***
Working With Built In Library Variables
    [Documentation]    This test case demonstrates the use of built-in variables in Robot Framework.
    Log    Hello World!
    Should Be True    ${NUMBER} == 100
    ${str1}    Catenate    Hello    World
    Log     ${str1}
    ${a}    Set Variable    Hi
    Log     ${a}
    ${b}    Set Variable If    ${NUMBER}>=100    Hello Robot    Hello World
    Log     ${b}
