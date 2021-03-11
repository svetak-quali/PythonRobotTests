*** Settings ***
Documentation     prints random string in range of 1900, report size will be bigger than 15MB
Library           String

*** Test Cases ***
For-Loop-In-Range
    FOR    ${INDEX}    IN RANGE    1    1900
        Log To Console    ${INDEX}
        ${RANDOM_STRING}=    Generate Random String    ${INDEX}
        Log To Console    ${RANDOM_STRING}
    END
