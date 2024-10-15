*** Settings ***
Library    Browser
# Library    Selenium 

*** Variables ***
${URL}    https://www.google.com

*** Test Cases ***
tiyiy
    Open Google Page

*** Keywords ***
Open Google Page
    New Browser    browser=chromium    headless=False
    New Page    url=https://www.google.com