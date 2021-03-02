*** Settings ***
Documentation     A test suite containing one test that sleeps for 60sec.
...				  The suite should pass successfully.

*** Test Case ***
Sleep for 60sec
	Sleep 60 sec

*** Keywords ***
Sleep 60 sec
	sleep 		60s
