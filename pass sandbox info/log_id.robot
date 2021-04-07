*** Settings ***
Documentation     Log sandbox id
Library    Collections

*** Test Case ***
Print sandbox id
	id        ${sandbox.id}
     

*** Keywords ***

id
	[Arguments]    ${id}
    Log 			${\n}the id of the sandbox is: ${id}
