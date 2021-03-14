*** Settings ***
Documentation     A test suite containing 2 test cases - pass and fail.
...				  The execution should get result failed.

*** Test Case ***
Should pass
	Right condition
Should fail
	Wrong condition

*** Keywords ***
Right condition
    Should Be Equal 	0 	0

Wrong condition
    Should Be Equal 	0 	1
