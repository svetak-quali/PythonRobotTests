*** Settings ***
Documentation     for testing of errors about invalid content in the test itslef
...				  The suite should fail.

*** Variables ***
${param1}	
${param2}				

*** Test Case ***
should check if equals
	check    ${param1}  ${param2}
print para
	print    ${param1} 

*** Keywords ***
	
print
	Log To Console   ${param1}
