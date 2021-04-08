*** Settings ***
Documentation     A test suite containing one test that sleeps for 90sec.
...				  The suite should pass successfully.

*** Test Case ***
Sleep for 90sec
	Sleep 90 sec

*** Keywords ***
Sleep 90 sec
	sleep 		90s