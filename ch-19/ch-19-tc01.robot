*** Settings ***
Documentation     This is a test suite for testing the login functionality of the application with MFA using Browser Library and OTP Library.
# pip install robotframework-otp
Library    Browser
Library    OTP
Test Setup    New Browser    ${BROWSER}    headless=${HEADLESS}
Test Teardown    Close Browser


*** Variables ***
${BROWSER}    chromium
${HEADLESS}   false
${URL}        https://seleniumbase.io/realworld/login


*** Test Cases ***
Login With MFA
    Open Login Page
    Enter User Name and Password    demo_user    secret_pass
    Enter TOTP Code     GAXG2MTEOR3DMMDG
    Sign In and Verify Welcome Message


*** Keywords ***
Open Login Page
    New Page    ${URL}

Enter User Name and Password
    [Arguments]    ${username}    ${password}
    Fill Text    id=username    ${username}
    Fill Text    id=password    ${password}

Enter TOTP Code
    [Arguments]    ${secret}
    ${totpcode}=   Get OTP     ${secret}
    Fill Text    id=totpcode   ${totpcode}

Sign In and Verify Welcome Message
    Click    id=log-in
    Wait For Elements State    text=Welcome!    visible
