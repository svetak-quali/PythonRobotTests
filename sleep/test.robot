*** Settings ***
Documentation     A test suite containing one test that sleeps for 120sec.
...				  The suite should pass successfully.

*** Test Case ***
Sleep for 120sec
	Sleep 120 sec

*** Keywords ***
Sleep 120 sec
	sleep 		120s