*** Settings ***
Documentation     A test suite containing one test that should fail.

*** Test Case ***
Should fail
	Wrong condition

*** Keywords ***
Wrong condition
    Should Be Equal 	0 	1
