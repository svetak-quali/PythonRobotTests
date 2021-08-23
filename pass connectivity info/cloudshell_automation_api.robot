*** Settings ***
Documentation     create cloudshell automation api session and write the connectivity data to the sandbox 
Library    Collections
Library   ../Libraries/CloudShellAPILibrary.py	${connectivity.server_address}	${connectivity.cloudshell_api_port}	admin	${connectivity.admin_auth_token}	Global	${sandbox.id}
*** Test Case *** 
log connectivity data to the test report
	print_connectivity	${connectivity}

write to output
	Write Connectivity Data to Sandbox


*** Keywords ***
print_connectivity
	[Arguments]	${connectivity}
	Log	${\n}server adress: ${connectivity.server_address}
	Log	${\n}cloudshell api port: ${connectivity.cloudshell_api_port}
	Log	${\n}cloudshell api scheme: ${connectivity.cloudshell_api_scheme}
	Log	${\n}quali api port: ${connectivity.quali_api_port}
	Log	${\n}admin auth token: ${connectivity.admin_auth_token}
	Log	${\n}use webapi endpoint: ${connectivity.use_webapi_endpoint}
  
Write Connectivity Data to Sandbox  
	Write Sandbox Message	${\n}server adress: ${connectivity.server_address}
	Write Sandbox Message	${\n}cloudshell api port: ${connectivity.cloudshell_api_port}
	Write Sandbox Message	${\n}cloudshell api scheme: ${connectivity.cloudshell_api_scheme}
	Write Sandbox Message	${\n}quali api port: ${connectivity.quali_api_port}
	Write Sandbox Message	${\n}admin auth token: ${connectivity.admin_auth_token}
	Write Sandbox Message	${\n}use webapi endpoint: ${connectivity.use_webapi_endpoint}

