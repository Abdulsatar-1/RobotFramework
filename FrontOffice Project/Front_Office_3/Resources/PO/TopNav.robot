*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${TOP_NAV_TEAM_LINK} =  css=#bs-example-navbar-collapse-1 > ul > li:nth-child(5) > a
${TOP_NAV_PORTFOLIO_LINK} =  css=#bs-example-navbar-collapse-1 > ul > li:nth-child(3) > a
${TOP_NAV_ABOUT_LINK} =  css=#bs-example-navbar-collapse-1 > ul > li:nth-child(4) > a
${TOP_NAV_SERVICES_LINK} =  css=#bs-example-navbar-collapse-1 > ul > li:nth-child(2) > a
${TOP_NAV_CONTACT_LINK} =  css=#bs-example-navbar-collapse-1 > ul > li:nth-child(6) > a

${CONTACT_TEXT_LINK} =  css=#contact > div > div:nth-child(1) > div > h3 > font > a

*** Keywords ***
Select "Team" Page
    click element  ${TOP_NAV_TEAM_LINK}
    Sleep  3s

Select "Portfolio" Page
    click element  ${TOP_NAV_PORTFOLIO_LINK}
    Sleep  3s

Select "About" Page
    click element  ${TOP_NAV_ABOUT_LINK}
    Sleep  3s

Select "Services" Page
    click element  ${TOP_NAV_SERVICES_LINK}
    Sleep  3s

Select "Contacts" Page
    click element  ${TOP_NAV_CONTACT_LINK}
    Sleep  3s

Select "Contact_Text" Link
    click element  ${CONTACT_TEXT_LINK}
    Sleep  3s