*** Settings ***
Documentation     A test suite containing one test that compares between 2 parameters.
...				  The suite should pass successfully if the parameters are equal.

*** Variables ***
${param1}	
${param2}				

*** Test Case ***
check if equal
	check    ${param1}  ${param2}


*** Keywords ***
check
	[Arguments]    ${param1}  ${param2} 
	Should Be Equal 	${param1} 	${param2}
