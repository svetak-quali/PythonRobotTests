*** Settings ***
Documentation     prints random string in range of 20000, report size will be bigger than 15MB
Library           String

*** Test Cases ***
For-Loop-In-Range
    FOR    ${INDEX}    IN RANGE    1    20000
        Log To Console    ${INDEX}
        ${RANDOM_STRING}=    Generate Random String    1
        Log To Console    ${RANDOM_STRING}
    END
