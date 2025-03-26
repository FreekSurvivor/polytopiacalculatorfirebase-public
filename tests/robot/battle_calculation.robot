*** Settings ***
Documentation     Tests for battle calculation functionality
Library           Browser
Resource          common_keywords.resource
Resource          common_selectors.resource

# Suite Setup       Open Browser To Main Page
# Suite Teardown    Close Browser

*** Variables ***

*** Test Cases ***
Should Display Attacker Selection
    Given I open the main page
    When I add a "Warrior" attacker
    Then the attacker selection should be visible

Should display Defender Selection
    Given I open the main page
    When I add a "Warrior" defender
    Then the defender selection should be visible

Should Calculate Damage Between Units
    Given I add an attacker with 10 attack
    When I add a defender with 5 defense
    Then the damage should be 5    

*** Keywords ***
i add a "${unit_type}" attacker
    Click    ${Attacker_unit_selector} ${${unit_type}_loc}

the attacker selection should be visible


i add a "${unit_type}" defender
    [Arguments]    ${unit_type}
    Click    [data-testid="${defender}-defender"]    

the defender selection should be visible
    Wait For Elements State    [data-testid="defender-selection"]    visible

