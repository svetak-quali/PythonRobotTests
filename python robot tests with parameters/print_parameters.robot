*** Settings ***
Documentation     prints the parameters values

*** Variables ***
${param1}	
${param2}
${param3}
${param4}				

*** Test Case ***
print param 1
	print    ${param1}
	
print param 2
	print    ${param2}
	
print param 3
	print    ${param3}

print param 4
	print    ${param4}

*** Keywords ***
	
print
	[Arguments]    ${param}
	Log To Console   ${param}
