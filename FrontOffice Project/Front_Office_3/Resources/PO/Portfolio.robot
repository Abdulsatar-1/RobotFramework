*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${PORTFOLIO_HEADER_LABEL} =  css=#portfolio > div > div:nth-child(1) > div > h2

*** Keywords ***
Verify Page Loaded
    wait until page contains element  ${PORTFOLIO_HEADER_LABEL}

Validate Page Contents
    # this fails in chrome but passes in Edge
    #element text should be  ${PORTFOLIO_HEADER_LABEL}  Portfolio

    ${ElementText} =  get text  ${PORTFOLIO_HEADER_LABEL}
    should be equal as strings  ${ElementText}  Portfolio  ignore_case=true
