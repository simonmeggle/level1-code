*** Settings ***
Documentation    This suite demonstrates how to return values from a keyword
Library    OperatingSystem

*** Test Cases ***
Returning A Scalar
    ${length} =    Get Length    Sapien risus aliquet torquent, vivamus feugiat curae est.
    # Check whether the length of the string is 57

Returning A List
    ${files} =  List Directory    ${CURDIR}
    # Check whether "returnvalue.robot" is in the files list

Returning a Dict Example
    ${vars}=    Get Environment Variables
    # Write the value of the PATH environment variable to the log

Multiple Return Example
    ${path}    ${file} =    Split Path    server/logs/server.log
    Should Be Equal    ${path}    server/logs
    Should Be Equal    ${file}    server.log