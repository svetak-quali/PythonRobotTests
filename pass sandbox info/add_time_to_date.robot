*** Settings ***
Documentation     time testing
Library    Collections
Library    DateTime

*** Test Case ***
add time
    end time    ${sandbox.end_time}

*** Keywords ***
end time
	[Arguments]    ${end_time}
    ${new_end_time} =       Add Time To Date      ${end_time}     7 days
    Log To Console			${\n}the new date is: ${new_end_time}

