*** Settings ***
Documentation    This test suite demonstrates how to use a resource file to manage
...    browser operations in Robot Framework.
Resource    browseropen.resource


*** Test Cases ***
Open Browser and Maximize Window
        [Documentation]    This test case demonstrates how to open a browser
        ...    and maximize the window using the Test Browser keyword defined in the resource file.
        Test Browser
