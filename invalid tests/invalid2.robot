*** Settings ***
Documentation     for testing of errors about invalid content in the test itslef
Library           String

*** Test Cases ***
For-Loop-In-Range
    :FOR    ${INDEX}    IN RANGE    1    3
    \   Log To Console    ${INDEX}
    \  ${RANDOM_STRING}=    Generate Random String    1
    \   Log To Console    ${RANDOM_STRING}
    