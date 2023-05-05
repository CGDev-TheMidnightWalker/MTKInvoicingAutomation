*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LOGIN URL}      https://eticketinvoice.avianca.com/invoice?lang=es
${BROWSER}        Chrome

*** Test Cases ***
Automated Edicom Invoicing
    [Documentation]    This test suite automates Edicom site Invoicing
    [Setup]    Open Browser    ${LOGIN URL}    ${BROWSER}
    [TearDown]    Close All Browsers
    Wait Until Element Is Visible    //*[@id="mat-radio-2"]/label/span[2]