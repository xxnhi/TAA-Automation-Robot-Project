*** Settings ***
Documentation    This Feature verifies the solution E2E scenario of website for user
Library    Browser
Library    Collections

*** Variables ***
#Argument
${url}
${emailAdmin}
${passwordAdmin}

*** Test Cases ***
Test case E2E for admin
    When The user goes to TAA's admin page, the
