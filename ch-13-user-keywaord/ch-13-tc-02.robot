*** Settings ***
Documentation     This is a test suite for testing the login functionality of the application.
Library    SeleniumLibrary


*** Variables ***
${BROWSER}    firefox
${URL}    https://tutorialspoint.com/selenium/selenium_automation_practice.htm


*** Test Cases ***
Open Browser firefox
    [Documentation]    This test case opens the browser and navigates to the login page.
    Open Browser From Firefox


*** Keywords ***
Open Browser From Firefox
    [Documentation]    This keyword opens the Firefox browser and navigates to the login page.
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Close Browser
