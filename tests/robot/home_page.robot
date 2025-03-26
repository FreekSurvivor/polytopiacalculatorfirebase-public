*** Settings ***
Documentation     Basic tests for Polytopia Calculator
Library           Browser
Resource          common_keywords.resource

Suite Setup       Open Browser To Main Page
Suite Teardown    Close Browser

*** Variables ***

*** Test Cases ***
Main Page Should Load
    Get Title    ==    Polytopia Damage Calculator
    Wait For Elements State    h1    visible    timeout=${TIMEOUT}
    Get Text    h1    ==    Polytopia Damage Calculator

Card Element Should Be Visible
    Wait For Elements State    .MuiCard-root    visible    timeout=${TIMEOUT}

Attacker Selection Should Exist
    Wait For Elements State    [data-testid="attacker-selection"]    visible    timeout=${TIMEOUT}

*** Keywords ***