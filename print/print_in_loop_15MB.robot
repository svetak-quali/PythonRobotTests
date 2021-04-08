*** Settings ***
Documentation     prints random string in range of 30000, report size will be almost 15MB
Library           String

*** Test Cases ***
For-Loop-In-Range
    FOR    ${INDEX}    IN RANGE    1    30000
        Log To Console    ${INDEX}
        ${RANDOM_STRING}=    Generate Random String    5000
        Log To Console    ${RANDOM_STRING}
    END
  
