*** Settings ***
Documentation  Talk about what this suite of tests does
Resource  ../Resources/FrontOfficeApp.robot
Resource  ../Resources/CommonWeb.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test

# robot -d results tests/Front_Office.robot

*** Variables ***
${BROWSER} =  chrome
${URL} =  https://automationplayground.com/front-office

*** Test Cases ***

#TEAM Page section
Should be able to access "Team" page
    [Documentation]  This is Test nro. 1
    [Tags]  Test_01
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Go to "Team" Page

"Team" page should match requirements
    [Documentation]  This is Test nro. 2
    [Tags]  Test_02
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Go to "Team" Page
    FrontOfficeApp.Validate "Team" Page


#PORTFOLIO Page section
Should be able to access "Portfolio" page
    [Documentation]  This is Test nro. 3
    [Tags]  Test_03
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Go to "Portfolio" Page

"Portfolio" page should match requirements
    [Documentation]  This is Test nro. 4
    [Tags]  Test_04
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Go to "Portfolio" Page
    FrontOfficeApp.Validate "Portfolio" Page


#ABOUT Page section
Should be able to access "About" page
    [Documentation]  This is Test nro. 5
    [Tags]  Test_05
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Go to "About" Page

"About" page should match requirements
    [Documentation]  This is Test nro. 6
    [Tags]  Test_06
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Go to "About" Page
    FrontOfficeApp.Validate "About" Page


#SERVICES Page section
Should be able to access "Services" page
    [Documentation]  This is Test nro. 7
    [Tags]  Test_07
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Go to "Services" Page

"Services" page should match requirements
    [Documentation]  This is Test nro. 8
    [Tags]  Test_08
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Go to "Services" Page
    FrontOfficeApp.Validate "Services" page

#CONTACT Page section
Should be able to access "Contact" page
    [Documentation]  This is Test nro. 9
    [Tags]  Test_09
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Go to "Contact" Page

"Contact" page should match requirements
    [Documentation]  This is Test nro. 10
    [Tags]  Test_10
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Go to "Contact" Page
    FrontOfficeApp.Validate "Contact" page


