*** Settings ***
Documentation     A test suite containing one test that sleeps for a while.
...				  The suite should pass successfully.

*** Variables ***
${sleep_for}			

*** Test Case ***
Sleep for a while
	Sleep for	   ${sleep_for}

*** Keywords ***
Sleep for
	[Arguments]    ${sleep_for}
	sleep 		   ${sleep_for}s
