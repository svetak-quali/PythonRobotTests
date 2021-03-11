*** Settings ***
Documentation     prints random string in range of 40000, report size will be bigger than 15MB
Library           String

*** Test Cases ***
For-Loop-In-Range
    FOR    ${INDEX}    IN RANGE    1    40000
        Log To Console    ${INDEX}
        ${RANDOM_STRING}=    Generate Random String    5000
        Log To Console    ${RANDOM_STRING}
    END
