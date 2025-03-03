*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${ABOUT_HEADER_LABEL} =  css=#about > div > div:nth-child(1) > div > h2

*** Keywords ***
Verify Page Loaded
    wait until page contains element  ${ABOUT_HEADER_LABEL}

Validate Page Contents
    # this fails in chrome but passes in Edge
    #element text should be  ${PORTFOLIO_HEADER_LABEL}  Portfolio

    ${ElementText} =  get text  ${ABOUT_HEADER_LABEL}
    should be equal as strings  ${ElementText}  About  ignore_case=true
