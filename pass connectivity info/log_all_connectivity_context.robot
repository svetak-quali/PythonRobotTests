*** Settings ***
Documentation     Log all connectivity info
Library    Collections

*** Test Case ***
Print connectivity info test
	print_connectivity        ${connectivity}
     

*** Keywords ***

print_connectivity
	[Arguments]	${connectivity}
	Log To Console	${\n}cloudshell api port: ${connectivity.cloudshell_api_port}
	Log To Console	${\n}cloudshell api scheme: ${connectivity.cloudshell_api_scheme}
   	Log To Console	${\n}quali api port: ${connectivity.quali_api_port}
    	Log To Console	${\n}admin auth token: ${connectivity.admin_auth_token}
    	Log To Console	${\n}use webapi endpoint: ${connectivity.use_webapi_endpoint}
