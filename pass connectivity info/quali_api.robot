*** Settings ***
Documentation     create Quali API session and attach some file to the sandbox 
Library    Collections
Library   ../Libraries/QualiAPILibrary.py	${connectivity.server_address}	${connectivity.quali_api_port}	${connectivity.admin_auth_token}	Global	${sandbox.id}
Suite Setup    Create File
Suite Teardown    Remove File

*** Test Case *** 
attch file to sandbox
	attach file

get list of the attached files
	get attachments

delete attached file
	delete file

*** Keywords ***
create some file
	Create File    test.txt

attach file 
	Attach File To Reservation

get attachments
	Get Reservation Attachments Details

delete file
	Delete File From Reservation

remove the file
	Remove File    test.txt