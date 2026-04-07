*** Settings ***
Library    SeleniumLibrary
Library    Browser
Task Setup    Browser.Open Browser    https://www.tutorialspoint.com/index.htm    chromium
Task Teardown    Browser.Close Browser


*** Test Cases ***
TC01 Verify Title
    [Documentation]    This test case verifies the title of the Tutorials Point homepage.
    ${title}=    Browser.Get Title
    Should Be Equal    ${title}    Coding Practice Problems & Tutorials | TutorialsPoint    
