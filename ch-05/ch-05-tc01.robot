*** Settings ***
Documentation    This suite contains test cases for tutorial purposes.
Library    SeleniumLibrary
Library    Browser
Task Setup    Browser.Open Browser    https://www.tutorialspoint.com/index.htm    chromium
Task Teardown    Browser.Close Browser

*** Test Cases ***
TC01 print to console
    [Documentation]    This test case prints a message to the console.
    Log    Welcome to our first test case!
    Log    In robot framework, we can easily log messages to the console for better visibility and debugging.
    Log    This is a simple example of how to use the Log keyword to print messages during test execution.
    Log    You can also use different log levels such as INFO, DEBUG, and ERROR to categorize your messages.
    Log    This helps in organizing the output and making it easier to understand the flow of the test case.
    Log    Remember to use logging effectively to enhance the readability and maintainability of your test cases.
    Log    Happy Testing!
