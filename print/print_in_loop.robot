*** Settings ***
Documentation     prints random string in range of 1500
Library           String

*** Test Cases ***
For-Loop-In-Range
    FOR    ${INDEX}    IN RANGE    1    1500
        Log To Console    ${INDEX}
        ${RANDOM_STRING}=    Generate Random String    ${INDEX}
        Log To Console    ${RANDOM_STRING}
    END
