*** Settings ***
Documentation    Suite for searching on Yandex
Library    SeleniumLibrary
Suite Setup    Open Browser To Radio Button Page
Suite Teardown    Close Browser


*** Variables ***
${BROWSER}    firefox
${URL}    https://yandex.com/


*** Test Cases ***
Search For Robot Framework
    [Documentation]    This test case searches for "Robot Framework" on Yandex
    ...    and verifies that the search results are displayed.
    Input Text    name=text    Robot Framework


*** Keywords ***
Open Browser To Radio Button Page
    [Documentation]    This keyword opens the browser and navigates to the Yandex homepage.
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
