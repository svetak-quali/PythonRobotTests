*** Settings ***
Documentation     A test suite containing one test that sleeps for a while.
...				  The suite should pass successfully.

*** Variables ***
${duration}			5

*** Test Case ***
Sleep for a while
	Sleep for	   ${duration}

*** Keywords ***
Sleep for
	[Arguments]    ${duration}
	sleep 		   ${duration}s
