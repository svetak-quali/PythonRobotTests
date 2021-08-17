*** Settings ***
Documentation     create Quali API session and attach some file to the sandbox 
Library    Collections
Library   ../Libraries/QualiAPILibrary.py	${connectivity.server_address}	${connectivity.quali_api_port}	${connectivity.admin_auth_token}	Global	${sandbox.id}

*** Test Case *** 
attch file to sandbox
	attach file

*** Keywords ***
attach file 
	Attach File To Reservation