*** Settings ***
Documentation     A test suite containing one test that sleep for 20sec. jhjhjhj
...				  The suite should pass successfully.
*** Test Case ***
Sleep for 20sec
	Sleep 20 sec

*** Keywords ***
Sleep 20 sec
	sleep 		10s
