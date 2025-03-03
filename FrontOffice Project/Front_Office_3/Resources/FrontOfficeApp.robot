*** Settings ***
Resource  ./PO/Landing.robot
Resource  ./PO/TopNav.robot
Resource  ./PO/Team.robot
Resource  ./PO/Portfolio.robot
Resource  ./PO/About.robot
Resource  ./PO/Services.robot
Resource  ./PO/Contacts.robot

*** Variables ***


*** Keywords ***
Go to Landing Page
    Landing.Navigate To
    Landing.Verify Page Loaded


#Team Page
Go to "Team" Page
    TopNav.Select "Team" Page
    Team.Verify Page Loaded

Validate "Team" Page
    Team.Validate Page Contents
    Team.Validate TeamPage Description


#Portfolio page
Go to "Portfolio" Page
    TopNav.Select "Portfolio" Page
    Portfolio.Verify Page Loaded

Validate "Portfolio" page
    Portfolio.Validate Page Contents

#About
Go to "About" Page
    TopNav.Select "About" Page
    About.Verify Page Loaded

Validate "About" page
    About.Validate Page Contents


#Services
Go to "Services" Page
    TopNav.Select "Services" Page
    Services.Verify Page Loaded

Validate "Services" page
    Services.Validate Page Contents


#contact
Go to "Contact" Page
    TopNav.Select "Contacts" Page
    Services.Verify Page Loaded

Validate "Contact" page
    Contacts.Validate Page Contents


