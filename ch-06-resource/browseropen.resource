*** Settings ***
Documentation    This is a test suite to demonstrate how to open a browser using SeleniumLibrary in Robot Framework.
Library    SeleniumLibrary


*** Variables ***
${URL}    https://www.tutorialspoint.com/index.htm
${BROWSER}    firefox


*** Keywords ***
Test Browser
    [Documentation]    This keyword opens a browser, navigates to the specified URL,
    ...    maximizes the window, and then closes the browser.
    Open Browser    ${URL}    ${BROWSER}
    Sleep    2s
    Maximize Browser Window
    Sleep    2s
    Log    Browser window has been maximized successfully.
    Sleep    2s
    Close Browser
