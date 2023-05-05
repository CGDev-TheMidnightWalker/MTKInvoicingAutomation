*** Settings ***
Library    SeleniumLibrary
Resource    ../Tools/Database/DatabaseUtilities.resource

*** Variables ***
${LOGIN URL}      https://webportal.edicomgroup.com/customers/united/pasaje/search.htm#!#collapse1
${BROWSER}        Chrome

*** Test Cases ***
Automated Edicom Invoicing
    [Documentation]    This test suite automates Edicom site Invoicing
    [Setup]    Open Browser    ${LOGIN URL}    ${BROWSER}
    [TearDown]    Close All Browsers
    Wait Until Element Is Visible    //*[@id="inicio"]/div/div/button/span
    Click Element    //*[@id="inicio"]/div/div/button/span
    Sleep    20s