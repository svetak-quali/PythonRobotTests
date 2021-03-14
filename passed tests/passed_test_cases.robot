*** Settings ***
Documentation     A test suite containing 3 tests that each one should pass.
...				  The suite should pass successfully.

*** Test Case ***
Should pass
	Right condition  1
Should pass2
	Right condition  1
Should pass3
	Right condition  1

*** Keywords ***
Right condition
	[Arguments]    ${num}
    Should Be Equal 	${num} 	1
