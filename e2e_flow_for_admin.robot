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
    When The user goes to TAA's admin page
    And The user logs in in with admin account
    Then The admin should be able to see account page
    When The admin manages columns on the account page
    Then The admin should be able to hide or show column on the account page
    When The admin applies filters on the account page
    Then The admin should see filtered rows based on columns, operators, and values on the account page
    When The admin adjusts thickness settings on the account page
    Then The admin should be able to see rows with close, standard, wide on the account page
    When The admin exports the account data to CSV
    Then The account file should be available on the local system
    When The admin navigates to order page
    Then The admin should be able to see order page
    When The admin manages columns on the order page
    Then The admin should be able to hide or show columns on the order page
    When The admin applies filters on the order page
    Then The admin should see filtered rows based on columns, operators, and values on the order page
    When The admin adjusts thickness settings on the order page
    Then The admin should see rows with close, standard, and wide on the order page
    When The admin exports the order data to CSV
    Then The order file should be available on the local system
    When The admin navigates to product page
    Then The admin should be able to see product page
    When The admin adds a new product in admin panel
    Then The product should be able to added successfully
    When The admin edits a product in admin panel
    Then The product should be able to edited successfully
    When The admin deletes a product in admin panel
    Then The product should be able to deleted successfully
    When The admin manages columns on the product page
    Then The admin should be able to hide or show column on the product page
    When The admin applies filters on the product page
    Then The admin should see filtered rows based on columns, operators, and values on the product page
    When The admin adjusts thickness settings on the product page
    Then The admin should be able to see rows with close, standard, wide on the product page
    When The admin exports the product data to CSV
    Then The product file should be available on the local system
    When The admin navigates to news page
    Then The admin should be able to see news page
    When The admin adds a new news in admin panel
    Then The news should be able to added successfully
    When The admin edits a news in admin panel
    Then The news should be able to edited successfully
    When The admin deletes a news in admin panel
    Then The news should be able to deleted successfully
    When The admin manages columns on the news page
    Then The admin should be able to hide or show column on the news page
    When The admin applies filters on the news page
    Then The admin should see filtered rows based on columns, operators, and values on the news page
    When The admin adjusts thickness settings on the news page
    Then The admin should be able to see rows with close, standard, wide on the news page
    When The admin exports the news data to CSV
    Then The news file should be available on the local system