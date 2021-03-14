*** Settings ***
Documentation     A test suite containing 3 tests that each one should fail.
...				  The suite should be failed.

*** Test Case ***
Should fail
	Wrong condition  2
Should fail2
	Wrong condition  3
Should fail3
	Wrong condition  4

*** Keywords ***
Wrong condition
	[Arguments]    ${num}
    Should Be Equal 	${num} 	1
