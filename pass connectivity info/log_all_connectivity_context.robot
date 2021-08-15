*** Settings ***
Documentation     Log all connectivity info
Library    Collections

*** Test Case ***
Print connectivity info test
	print_connectivity        ${connectivity}
     

*** Keywords ***

print_connectivity
	[Arguments]	${connectivity}
	Log	${\n}cloudshell api port: ${connectivity.cloudshell_api_port}
	Log	${\n}cloudshell api scheme: ${connectivity.cloudshell_api_scheme}
   	Log	${\n}quali api port: ${connectivity.quali_api_port}
    	Log	${\n}admin auth token: ${connectivity.admin_auth_token}
    	Log	${\n}use webapi endpoint: ${connectivity.use_webapi_endpoint}
