*** Settings ***
Documentation     create session with TestShell API and save the token in the sandbox data 
Library    Collections
Library   ../Libraries/CloudShellAPILibrary.py  ${connectivity.server_address}  admin ${connectivity.admin_auth_token}  Global  ${sandbox.id}
*** Test Case ***
print connectivity data
	print_connectivity        ${connectivity}
  Write Connectivity Data to Sandbox  
  
*** Keywords ***
print_connectivity
	[Arguments]	${connectivity}
	Log	${\n}cloudshell api port: ${connectivity.cloudshell_api_port}
	Log	${\n}cloudshell api scheme: ${connectivity.cloudshell_api_scheme}
  Log	${\n}quali api port: ${connectivity.quali_api_port}
  Log	${\n}admin auth token: ${connectivity.admin_auth_token}
  Log	${\n}use webapi endpoint: ${connectivity.use_webapi_endpoint}
  
Write Connectivity Data to Sandbox  
	Write Sandbox Message	${\n}cloudshell api port: ${connectivity.cloudshell_api_port}
	Write Sandbox Message	${\n}cloudshell api scheme: ${connectivity.cloudshell_api_scheme}
  Write Sandbox Message	${\n}quali api port: ${connectivity.quali_api_port}
  Write Sandbox Message	${\n}admin auth token: ${connectivity.admin_auth_token}
  Write Sandbox Message	${\n}use webapi endpoint: ${connectivity.use_webapi_endpoint}
  
    
