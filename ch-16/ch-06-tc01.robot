*** Settings ***
Documentation     This is a test suite for testing the login functionality of the application.
Library    SeleniumLibrary
Suite Setup    Open Browser    https://www.tutorialspoint.com/index.htm    firefox
Suite Teardown    Close Browser

*** Test Cases ***
