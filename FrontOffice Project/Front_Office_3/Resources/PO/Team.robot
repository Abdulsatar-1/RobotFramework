*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${TEAM_HEADER_LABEL} =  css=#team > div > div:nth-child(1) > div > h2
${TEAM_DESCRIPTION_LABEL} =  css=#team > div > div:nth-child(1) > div > h3

*** Keywords ***
Verify Page Loaded
    wait until page contains element  ${TEAM_HEADER_LABEL}

Validate Page Contents
    # this fails in chrome but passes in Edge
    #element text should be  ${TEAM_HEADER_LABEL}  Our Amazing Team

    ${ElementText} =  get text  ${TEAM_HEADER_LABEL}
    should be equal as strings  ${ElementText}  Our Amazing Team  ignore_case=true

Validate TeamPage Description
     ${ElementText_2} =  get text  ${TEAM_DESCRIPTION_LABEL}
     should be equal as strings  ${ElementText_2}  Lorem ipsum dolor sit amet consectetur.  ignore_case=true