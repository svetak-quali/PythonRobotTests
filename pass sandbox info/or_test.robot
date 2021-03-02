*** Settings ***
Documentation     Log sandbox id
Library    Collections

*** Test Case ***
Print sandbox id
	X        ${sandbox.id}
	Y		 ${sandbox.global_inputs}

*** Keywords ***
X
	[Arguments]    ${id}
    Log To Console			${id}
Y
	[Arguments]    ${global_inputs}
	${num} = 	Get From List 	${global_inputs} 	1
    Log To Console			${num.value}

