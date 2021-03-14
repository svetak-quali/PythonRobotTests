*** Settings ***
Documentation     prints random string in range of 100
Library           String

*** Test Cases ***
For-Loop-In-Range
    : FOR    ${INDEX}    IN RANGE    1    100
    \    Log    ${INDEX}
    \    ${RANDOM_STRING}=    Generate Random String    ${INDEX}
    \    Log    ${RANDOM_STRING}
    