*** Settings ***
Documentation    This Feature verifies the solution E2E scenario of website for user
Library    Browser
Library    Collections
Suite Setup   Sleep For 2 Seconds 
Resource    ../resources/Locators.robot
*** Variables ***
#Argument
${emailaccount9}    xxnhi2712@gmail.com
${passwordaccount9}    Xuannhi03!
${username}    xxnhi2712
${email}    abcdxyz12@gmail.com
${password}    Xuannhi03!1
${phoneNumber}    0934863321
${repassword}    Xuannhi03!1
${titleSecTionHomePageText}    Sản phẩm nổi bật trong tuần
${titleSectionNewsPageText}    TUẦN VỪA QUA
${titleSectionAboutUsText}    VỀ CHÚNG TÔI
${titleSectionPInstructionText}    HƯỚNG DẪN MUA HÀNG TRÊN WEBSITE
${titleSectionPolicyText}    CHÍNH SÁCH BẢO HÀNH
${productName}    Nhẫn cặp dễ thương dành cho cặp đôi
${generalAddress}    Thủ Đức, Hồ Chí Minh, and
${detailAddress}    KTX Khu A. Linh Trung
*** Test Cases ***
Test case E2E for user    
    When The unauthenticated user goes to website
    Then The unauthenticated user should be able to see home page    ${titleSecTionHomePageText}
    When The unauthenticated user navigates to product page
    Then The unauthenticated user should be able to see product page
    When The unauthenticated user navigates to see news page
    Then The unauthenticated user should be able to see news page
    When The unauthenticated user navigates to see about us page
    Then The unauthenticated user should be able to see about us page
    When The unauthenticated user navigates to see purchase instruction page
    Then The unauthenticated user should be able to see purchase instruction page
    When The unauthenticated user navigates to see policy page
    Then The unauthenticated user should be able to see policy page
    When The unauthenticated user registers an account
    Then The user should be able to login into web with "${emailaccount9}" email and "${passwordaccount9}" password
    And The user should be able to see their "${username}" username in home page
    When The user searches for the product "${productName}" 
    Then The user should be able to see product "${productName}" in product page
    When The user hovers and clicks "Quick View" button on the product "${productName}"
    Then The user should be able to see "${ProductQuickView}" in quick view
    When The user clicks on "${ViewDetailButton}" view detail button
    Then The user should be able to see "${ProductDetail}" in the product detail page
    When The user clicks on "${AddCartButton}" add cart button
    Then The product should be able to add to cart successfully
    When The user navigates to see cart page
    And The user edits the quantity of cart item
    And The user clicks on "${ProceedOrderButton}" proceed order button
    Then The user should be able to go to order page
    When The user fills shipping address, shipping method, payment method
    And The user clicks on "${OrderButton}" button
    Then The users should be able to see the order successfully placed notification
    When The user navigates to order page by click on ${ViewOrdersButton}
    Then The user should be able to see ${OrderPlaced}
    When The user clicks on ${LogOutButton} in the menu
    And The user clicks on ${LogOutButtonPopup} in the log out popup
    Then The user logs out of the website successfully 
*** Keywords ***
Sleep For 2 Seconds
    Sleep    2s

The unauthenticated user goes to website
    [Documentation]    This keyword verifies that user can go to website
    New Browser    browser=chromium    headless=False
    New Context    viewport={"width": 1500, "height":900 }
    New Page    url=${URL}
    Sleep For 2 Seconds

The unauthenticated user should be able to see home page
    [Arguments]    ${titleSecTionHomePageText}
    Get Text    ${TitleSectionHomePage}    ==    ${titleSecTionHomePageText}
    Scroll To    vertical=bottom
    Sleep For 2 Seconds

The unauthenticated user navigates to product page
    Click    ${ProductTab}
    Sleep For 2 Seconds

The unauthenticated user should be able to see product page
    Wait For Elements State    ${ProductCategory}    visible    timeout=10s
    Scroll To    vertical=top
    Scroll To    vertical=bottom
    Sleep For 2 Seconds

The unauthenticated user navigates to see news page
    Click    ${NewsTab}
    Sleep For 2 Seconds

The unauthenticated user should be able to see news page
    Get Text    ${TitleSectionNewsPage}    ==    ${titleSecTionNewsPageText}
    Scroll To    vertical=top
    Scroll To    vertical=bottom
    Sleep For 2 Seconds

The unauthenticated user navigates to see about us page
    Click    ${AboutUsTab}
    Sleep For 2 Seconds

The unauthenticated user should be able to see about us page
    Get Text    ${TitleSectionAboutUsPage}    ==    ${titleSectionAboutUsText}
    Scroll To    vertical=top
    Scroll To    vertical=bottom
    Sleep For 2 Seconds

The unauthenticated user navigates to see purchase instruction page
    Click    ${GuilineTab}
    Wait For Elements State    ${PurchaseInstructionSubTab}    visible
    Click    ${PurchaseInstructionSubTab}
    Sleep For 2 Seconds

The unauthenticated user should be able to see purchase instruction page
    Get Text    ${TitleSectionPurchaseInstructionPage}    ==    ${titleSectionPInstructionText}
    Scroll To    vertical=bottom
    Scroll To    vertical=top
    Sleep For 2 Seconds

The unauthenticated user navigates to see policy page
    Click    ${GuilineTab}
    Wait For Elements State    ${PolicySubTab}    visible
    Click    ${PolicySubTab}
    Sleep For 2 Seconds

The unauthenticated user should be able to see policy page
    Get Text    ${TitleSectionPolicyPage}    ==    ${titleSectionPolicyText}
    Scroll To    vertical=bottom
    Scroll To    vertical=top
    Sleep For 2 Seconds


The unauthenticated user registers an account
    [Documentation]    This keyword verifies the unauthenticated user can register website by enter valid informations: 
    ...    username is ${username}, phone number is ${phoneNumber}, email is ${email}, password is ${password}, re-password is ${repassword}
    ...    Output: User can register account successfully
    Click    ${RegisterButton}
    Fill Text    ${UsernameField}    ${username}
    Fill Text    ${PhoneNumberField}    ${phoneNumber}
    Fill Text    ${EmailField}    ${email}
    Fill Text    ${PasswordField}    ${password}
    Fill Text    ${RepasswordField}    ${repassword}
    Sleep For 2 Seconds
    Click    ${LabelCheckBox}
    Click    ${RegisterButtonResPage}
    Sleep For 2 Seconds

The user should be able to login into web with "${username}" email and "${password}" password
    New Page    url=http://localhost:3000/log_in
    Fill Text    ${EmailFieldLogIn}    ${emailaccount9}
    Fill Text    ${PasswordFieldLogIn}    ${passwordaccount9}
    Sleep For 2 Seconds
    Click    ${LoginButtonLogIn}
    Sleep For 2 Seconds

The user should be able to see their "${username}" username in home page
    Get Text    ${UsernameHomePage}    ==    ${username}
    Sleep For 2 Seconds

The user searches for the product "${productName}" 
    Fill Text    ${SearchFieldHomPages}    ${productName}
    Click    ${SearchButton}     
    Sleep For 2 Seconds

The user should be able to see product "${productName}" in product page
    Wait For Elements State    ${SearchedProductText}
    Get Text    ${SearchedProductText}    ==    ${productName}
    Sleep For 2 Seconds

The user hovers and clicks "Quick View" button on the product "${productName}"
    Hover    ${ProductDivItem}
    Wait For Elements State    ${QuickViewButtonWhenHover}    visible    timeout=10s
    Click    ${QuickViewButtonWhenHover}
    Sleep For 2 Seconds

The user should be able to see "${ProductQuickView}" in quick view
    Wait For Elements State    ${ProductQuickView}    visible    timeout=10s
    Sleep For 2 Seconds

The user clicks on "${ViewDetailButton}" view detail button
    Click    ${ViewDetailButton}
    Sleep For 2 Seconds

The user should be able to see "${ProductDetail}" in the product detail page
    Wait For Elements State    ${ProductDetail}    visible    timeout=10s
    Scroll To    vertical=bottom
    Sleep For 2 Seconds

The user clicks on "${AddCartButton}" add cart button
    Click    ${AddCartButton}
    Sleep For 2 Seconds

The product should be able to add to cart successfully
    Wait For Elements State    ${AddCartSuccessfullyText}    visible
    Sleep For 2 Seconds

The user navigates to see cart page
    Click    ${CartIcon}
    Sleep For 2 Seconds

The user edits the quantity of cart item
    Click    ${TickAllCheckBox}
    Wait For Elements State    ${MoneyTotal}    visible
    Get Text    ${MoneyTotal}    ==    145.000 đ
    Sleep For 2 Seconds
    Click    ${PlusQuantityProduct}
    Wait For Elements State    ${MoneyTotal}    visible
    Get Text    ${MoneyTotal}    ==    295.000 đ
    Sleep For 2 Seconds
    Click    ${MinusQuantityProduct}
    Wait For Elements State    ${MoneyTotal}    visible
    Get Text    ${MoneyTotal}    ==    145.000 đ
    Sleep For 2 Seconds

The user clicks on "${ProceedOrderButton}" proceed order button
    Click    ${ProceedOrderButton}
    Sleep For 2 Seconds

The user should be able to go to order page
    Wait For Elements State    ${ContentOrderPage}    visible
    Sleep For 2 Seconds
    
The user fills shipping address, shipping method, payment method
    There is no address then the user add a new address
    Click    ${Option1ShippingMethod}
    Click    ${Option1PaymentMethod}
    Sleep For 2 Seconds

There is no address then the user add a new address
    Click    ${AddAddressButton}
    Fill Text    ${RecipientNameAddAddress}    ${username}
    Fill Text    ${PhoneNumberAddAddress}    ${phoneNumber}
    Fill Text    ${GeneralAddressAddAddress}    ${generalAddress}
    Fill Text    ${DetailAddressAddAddress}    ${detailAddress}
    Click    ${AcceptButtonAddAddress}
    Sleep For 2 Seconds

The user clicks on "${OrderButton}" button
    Click    ${OrderButton}
    Sleep For 2 Seconds

The users should be able to see the order successfully placed notification
    Get Text    ${OrderSuccesfullyText}    ==    Đặt hàng thành công!
    Sleep For 2 Seconds

The user navigates to order page by click on ${ViewOrdersButton}
    Click    ${ViewOrdersButton}
    Sleep For 2 Seconds

The user should be able to see ${OrderPlaced}
    Get Text    ${OrderPlaced}    ==    Trang cung cấp thông tin về các đơn hàng theo danh mục
    Scroll To    vertical=bottom
    Scroll To    vertical=top
    Sleep For 2 Seconds

The user go to Favorite page
    Click    ${Avatar}
    Click    ${FavoritesButton}

The user clicks on ${LogOutButton} in the menu
    The user go to Favorite page
    Click    ${Avatar}
    Click    ${LogOutButton}
    Sleep For 2 Seconds

The user clicks on ${LogOutButtonPopup} in the log out popup
    Wait For Elements State    ${LogOutButtonPopup}    visible    timeout=10s
    Click    ${LogOutButtonPopup}
    Sleep For 2 Seconds

The user logs out of the website successfully
    Wait For Elements State    ${SignInButton}    visible    timeout=10s
    Wait For Elements State    ${SignUpButton}    visible    timeout=10s
    Sleep For 2 Seconds
