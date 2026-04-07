*** Settings ***
Documentation     This is a test suite for testing the login functionality of the application.
Library           SeleniumLibrary
Suite Setup       Open Browser To Login Page
Suite Teardown    Close Browser


*** Test Cases ***
TC01 Capture Page Screenshot
    [Documentation]    This test case verifies that a page screenshot can be captured.
    Capture Page Screenshot    page.png


*** Keywords ***
Open Browser To Login Page
    [Documentation]    This keyword opens the browser and navigates to the login page.
    Open Browser    https://example.com/login    firefox
    Maximize Browser Window
