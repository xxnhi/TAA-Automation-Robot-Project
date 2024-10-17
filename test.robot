*** Settings ***
Library    Browser
# Library    Selenium 

*** Variables ***
${URL}    http://localhost:3000/register
${usernameField}    (//input[@id='formBasicEmail'])[1]
*** Test Cases ***
tiyiy
    Open Google Page

*** Keywords ***
Open Google Page
    New Browser    browser=chromium    headless=False
    New Page    ${URL}
    Click    ${usernameField}