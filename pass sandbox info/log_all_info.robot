*** Settings ***
Documentation     Log sandbox id
Library    Collections
Library    DateTime

*** Test Case ***
Print sandbox info
	id        ${sandbox.id}
    end time     ${sandbox.end_time}
    teardown time     ${sandbox.teardown_time}
    check length and run the keyword if needed		    ${sandbox.global_inputs}    global
    check length and run the keyword if needed		    ${sandbox.additional_inputs}    additional inputs
    check length and run the keyword if needed          ${sandbox.service_inputs}      service inputs
    check length and run the keyword if needed          ${sandbox.abstract_requirements}    abstract requirements		    
    check length and run the keyword if needed          ${sandbox.resources}       resources		     

*** Keywords ***
check length and run the keyword if needed
    [Arguments]    ${list}    ${run_it} 
    ${length} =	Get Length	${list}
    Run Keyword If	${length} > 0   ${run_it}		${list}

id
	[Arguments]    ${id}
    Log To Console			${\n}the id of the sandbox is: ${id}       

end time
	[Arguments]    ${end_time}
    Log To Console			${\n}the end time of the sandbox is: ${end_time}
    ${converted_end_time} =	Convert Date    ${end_time}  result_format=%d.%m.%Y %H:%M
    Log To Console			${\n}and when the date is converted: ${converted_end_time}

teardown time
	[Arguments]    ${teardown_time}
    Log To Console			${\n}the teardown time of the sandbox is: ${teardown_time}
    ${converted_teardown_time} =	Convert Date    ${teardown_time}  result_format=%d.%m.%Y %H:%M
    Log To Console			${\n}and when the date is converted: ${converted_teardown_time}

global
	[Arguments]    ${global_inputs}
	${length} =	Get Length	${global_inputs}
    log to console          ${\n}global inputs list: ${global_inputs}
    log to console          ${\n}the number of the global inputs in this sandbox is: ${length}
    FOR    ${input}     IN      @{global_inputs}
        Log To Console			${\n}the name of the global input is: ${input.name}
        Log To Console			${\n}and its value is: ${input.value}
    END

additional inputs
	[Arguments]    ${additional_inputs}
	${length} =	Get Length	${additional_inputs}
    log to console          ${\n}additional inputs list: ${additional_inputs}
    log to console          ${\n}the number of the additional inputs in this sandbox is: ${length}
    FOR    ${input}     IN      @{additional_inputs}
        Log To Console			${\n}the name of the additional input is: ${input.name}
        Log To Console			${\n}its value is: ${input.value}
        Log To Console			${\n}and the name of its resource is: ${input.resource_name}
    END

service inputs
	[Arguments]    ${service_inputs}
    ${length} =	Get Length	${service_inputs}
    log to console          ${\n}service inputs list: ${service_inputs}
    log to console          ${\n}the number of the service inputs in this sandbox is: ${length}
    FOR    ${input}     IN      @{service_inputs}
        Log To Console			${\n}the name of the service input is: ${input.name}
        Log To Console			${\n}its value is: ${input.value}
        Log To Console			${\n}and the name of its resource is: ${input.resource_name}
    END

abstract requirements
	[Arguments]    ${abstract_requirements}
    ${length} =	Get Length	${abstract_requirements}
    log to console          ${\n}abstract requirements list: ${abstract_requirements}
    log to console          ${\n}the number of the abstract requirements in this sandbox is: ${length}
    FOR    ${input}     IN      @{abstract_requirements}
        log to console          ${\n}input details: ${input}
        Log To Console			${\n}the name of the abstract requirement is: ${input.name}
        Log To Console			${\n}its value is: ${input.value}
        Log To Console			${\n}the name of its resource is: ${input.resource_name}
        Log To Console			${\n}and its type is: ${input.type}
    END

resources
	[Arguments]    ${resources}
    ${length} =	Get Length	${resources}
    log to console          ${\n}resources list: ${resources}
    log to console          ${\n}the number of resources in this sandbox is: ${length}
    FOR    ${resource}     IN      @{resources}
        log to console          ${\n}resource details: ${resource}
        Log To Console			${\n}the name of the resource is: ${resource.name}   
        Log To Console			${\n}its address is: ${resource.address}
        Log To Console			${\n}its full address is: ${resource.full_address}
        Log To Console			${\n}its family is: ${resource.family}
        Log To Console			${\n}its model is: ${resource.model}
        Log To Console			${\n}the blueprint alias is: ${resource.blueprint_alias}
        Log To Console			${\n}and it's connected to: ${resource.connected_to}
    END
        
            

    

    
