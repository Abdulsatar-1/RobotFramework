*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${CONTACT_HEADER_LABEL} =  css=#contact > div > div:nth-child(1) > div > h2

*** Keywords ***
Verify Page Loaded
    wait until page contains element  ${CONTACT_HEADER_LABEL}

Validate Page Contents
    ${ElementText} =  get text  ${CONTACT_HEADER_LABEL}
    should be equal as strings  ${ElementText}  Contact Us  ignore_case=true
