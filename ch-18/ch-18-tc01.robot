*** Settings ***
Documentation     This is a test suite for testing Database Library in Robot Framework.
Library    DatabaseLibrary


*** Variables ***
${DB API}    pymysql
${DB NAME}    homedb
${DB USER}    root
${DB PASSWORD}    password
${DB HOST}    localhost


*** Test Cases ***
Connect To Database
    [Documentation]    This test case demonstrates how to connect to a database using Database Library.
    Connect To Database    ${DB API}    ${DB NAME}    ${DB USER}    ${DB PASSWORD}    ${DB HOST}
    Table Must Exist    phonenums
    Check If Exists In Database    SELECT * FROM phonenums
    ${queryResult}    Query    SELECT * FROM phonenums
    Log    ${queryResult}[0]
    Disconnect From Database
