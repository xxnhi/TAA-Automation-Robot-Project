*** Settings ***
Documentation    This Feature verifies the solution E2E scenario of website
Library    Browser
Library    Collections

*** Keywords ***
${username}    xxnhi2712
${password}    Xuannhi03!
${productName}    Hihi
${productDetail}
${addCartButton}
*** Test Cases ***
Test case E2E
    When The unauthenticated user goes to website
    Then The unauthenticated user should be able to see home page
    And The unauthenticated user navigates to product page
    And The unauthenticated user navigates to see news page
    And The unauthenticated user navigates to see about us page
    And The unauthenticated user navigates to see guidline page
    When The unauthenticated user registers an account
    Then The user should be able to login into web with "${username}" username and "${password}" password
    When The user searchs "${productName}" product name
    Then The user should be able to see product "${productName}" in product page
    When The user clicks on the product "${productName}"
    Then The user should be able to see "${productQuickView}" in quick view
    When The user clicks on "${viewDetailButton}" button
    Then The user should be able to see "${productDetail}" in the product detail page
    When The user clicks on "${addCartButton}" button
    Then The product should be able to add to cart successfully
    When The user navigates to cart page
    And The user edits quantity of cart item
    And The user clicks on "${orderButton}" button
    Then The user should be able to go order page
    When The user fills "${abcd}" shipping address, "${efgh}", "${qwerty}"
    And The user clicks on "${proceedOrderButton}" button
    Then The users should be able to see the order successfully placed notification
    When The user navigates to profile page
    Then The user should be able to see ${z1}, ${z2}, ${z3}
*** Keywords ***
The unauthenticated user goes to website
