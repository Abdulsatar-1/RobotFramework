*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SERVICES_HEADER_LABEL} =  css=#services > div > div:nth-child(1) > div > h2

*** Keywords ***
Verify Page Loaded
    wait until page contains element  ${SERVICES_HEADER_LABEL}

Validate Page Contents
    ${ElementText} =  get text  ${SERVICES_HEADER_LABEL}
    should be equal as strings  ${ElementText}  Services  ignore_case=true
