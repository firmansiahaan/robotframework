*** Settings ***
Documentation    Test suite for Display Message keyword


*** Test Cases ***
TC01 Test Display Message
    [Documentation]    Verify that the Display Message keyword logs the provided text
    Display Message    Hello, Robot Framework!

TC02 Test Display Message with Different Text
    [Documentation]    Verify that the Display Message keyword logs different text
    Display Message    This is another message to log.

*** Keywords ***
Display Message
    [Documentation]    Logs the provided message
    [Arguments]    ${message}
    Log    ${message}
