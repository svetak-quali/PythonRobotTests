*** Settings ***
Documentation     create session with TestShell API and save the token in the sandbox data 
Library    Collections

*** Test Case ***
print connectivity data
	print_connectivity        ${connectivity}
  
create TestShell API session
  create session      ${connectivity}
     
set sandbox data
  set SandboxData        ${sandbox.id}
  
*** Keywords ***
print_connectivity
	[Arguments]	${connectivity}
	Log	${\n}cloudshell api port: ${connectivity.cloudshell_api_port}
	Log	${\n}cloudshell api scheme: ${connectivity.cloudshell_api_scheme}
  Log	${\n}quali api port: ${connectivity.quali_api_port}
  Log	${\n}admin auth token: ${connectivity.admin_auth_token}
  Log	${\n}use webapi endpoint: ${connectivity.use_webapi_endpoint}
  
  
create session
    [Arguments]    ${connectivity} 
    
