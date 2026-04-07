*** Settings ***
Documentation     This is a test suite for testing the login functionality of the application.
Library    SeleniumLibrary
Suite Setup    Open Browser To Login Page
Suite Teardown    Close Browser


*** Variables ***
${BROWSER}    firefox
${URL}    file:///D:/Firman/Programming/robot/tutorial/html/login.html


*** Test Cases ***
Login With Valid Credentials
    [Documentation]    This test case logs in with valid credentials and verifies that the login is successful.
    Input Text    id=email    admin@gmail.com
    Input Text    id=passwd    admin
    Click Button    id=btnsubmit
    Page Should Contain    Login Successful


*** Keywords ***
Open Browser To Login Page
    [Documentation]    This keyword opens the browser and navigates to the login page.
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
