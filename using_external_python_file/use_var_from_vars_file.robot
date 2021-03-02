*** Settings ***
Documentation     A test suite containing one test that use myvars.py as variable file.


*** Test Case ***
Validate the world is nice
	World is nice

*** Keywords ***
World is nice
    Should Be Equal 	${WORLD} 	Nice world
