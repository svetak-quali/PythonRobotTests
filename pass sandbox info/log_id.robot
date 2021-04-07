*** Settings ***
Documentation     Log sandbox id
Library    Collections

*** Test Case ***
Print sandbox info
	id        ${sandbox.id}
     

*** Keywords ***

id
	[Arguments]    ${id}
    Log 			${\n}the id of the sandbox is: ${id}
