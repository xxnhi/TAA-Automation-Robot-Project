*** Settings ***
Documentation    This Feature verifies the solution E2E scenario of website
Library    Browser
Library    Collections

*** Variables ***
#Argument
${emailaccount9}    xxnhi2712@gmail.com
${passwordaccount9}    Xuannhi03!
${username}    xxnhi2712
${email}    xuannhi2727271@gmail.com
${password}    Xuannhi03!1
${phoneNumber}    0934863321
${repassword}    Xuannhi03!
${titleSecTionHomePageText}    Sản phẩm nổi bật trong tuần
${titleSectionNewsPageText}    TUẦN VỪA QUA
${titleSectionAboutUsText}    VỀ CHÚNG TÔI
${titleSectionPInstructionText}    HƯỚNG DẪN MUA HÀNG TRÊN WEBSITE
${titleSectionPolicyText}    CHÍNH SÁCH BẢO HÀNH
${productName}    Nhẫn cặp dễ thương dành cho cặp đôi
# Header
${URL}    http://localhost:3000/
${ProductTab}    //a[contains(text(),'Sản phẩm')]
${NewsTab}    //a[@class='nav-link'][contains(text(),'Tin tức')]
${AboutUsTab}    //a[@class='nav-link'][contains(text(),'Về chúng tôi')]
${GuilineTab}    //a[@role='button'][contains(text(),'Hướng dẫn')]
${PurchaseInstructionSubTab}    //a[@role='button']//a[contains(text(),'Hướng dẫn mua hàng')]
${PolicySubTab}    //a[@role='button']//a[normalize-space()='Chính sách']
${RegisterButton}    //a[contains(text(),'Đăng ký')]

# Home Page
${TitleSectionHomePage}    //h1[contains(text(),'Sản phẩm nổi bật trong tuần')]
${UsernameHomePage}    //div[@class='user_name col']
${SearchFieldHomPages}    //input[@placeholder='Tìm kiếm']
${SearchedProductText}    //a[contains(text(),'Nhẫn cặp dễ thương dành cho cặp đôi')]
# Product Page
${ProductCategory}    //div[@class='product__category col-xxl-3 col-xl-3 col-lg-3 col-md-4 col-sm-4']

# News Page
${TitleSectionNewsPage}    //h1[contains(text(),'TUẦN VỪA QUA')]

# About Us Page
${TitleSectionAboutUsPage}    //h1[contains(text(),'VỀ CHÚNG TÔI')]

# Purchase Instruction Page
${TitleSectionPurchaseInstructionPage}    //h1[contains(text(),'HƯỚNG DẪN MUA HÀNG TRÊN WEBSITE')]

# Policy Page
${TitleSectionPolicyPage}    //div[@class='policy__title1 display-large']



# Register Page
${UsernameField}    (//input[@id='formBasicEmail'])[1]
${PhoneNumberField}    (//input[@id='formBasicEmail'])[2]
${EmailField}    (//input[@id='formBasicEmail'])[3]
${PasswordField}    //input[@id='formBasicPassword']
${RepasswordField}   //input[@id='formConfirmPassword']
${LabelCheckBox}    //label[contains(text(),'Tôi đã đọc và đồng ý với Điều kiện giao dịch chung')]
${RegisterButtonResPage}    //main//button[@type='submit']//span[1]

#Login Page
${EmailFieldLogIn}    //input[@id='formBasicEmail']
${PasswordFieldLogIn}    //input[@id='formBasicPassword']
${LoginButtonLogIn}    //button[@class='login_btn body-large']
*** Test Cases ***
Test case E2E    
    # When The unauthenticated user goes to website
    # Then The unauthenticated user should be able to see home page    ${titleSecTionHomePageText}
    # When The unauthenticated user navigates to product page
    # Then The unauthenticated user should be able to see product page
    # When The unauthenticated user navigates to see news page
    # Then The unauthenticated user should be able to see news page
    # When The unauthenticated user navigates to see about us page
    # Then The unauthenticated user should be able to see about us page
    # When The unauthenticated user navigates to see purchase instruction page
    # Then The unauthenticated user should be able to see purchase instruction page
    # When The unauthenticated user navigates to see policy page
    # Then The unauthenticated user should be able to see policy page
    # When The unauthenticated user registers an account
    Then The user should be able to login into web with "${username}" username and "${password}" password
    And The user should be able to see their "${username}" username in home page
    When The user searchs "${productName}" product name
    Then The user should be able to see product "${productName}" in product page
    When The user hovers and clicks "Quick View" button on the product "${productName}"
    Then The user should be able to see "${ProductQuickView}" in quick view
    When The user clicks on "${ViewDetailButton}" button
    Then The user should be able to see "${ProductDetail}" in the product detail page
    When The user clicks on "${AddCartButton}" button
    Then The product should be able to add to cart successfully
    When The user navigates to cart page
    And The user edits quantity of cart item
    And The user clicks on "${ProceedOrderButton}" button
    Then The user should be able to go order page
    When The user fills shipping address, shipping method , payment method
    And The user clicks on "${OrderButton}" button
    Then The users should be able to see the order successfully placed notification
    When The user navigates to order page by click on ${ViewOrdersButton}
    Then The user should be able to see ${OrderPlaced}
    When The user clicks on ${LogOutButton} on menu
    And The user clicks on ${LogOutButtonPopup} on log out popup
    Then The user logs out of the website successfully 
*** Keywords ***
The unauthenticated user goes to website
    [Documentation]    This keyword verifies that user can go to website
    New Browser    browser=chromium    headless=False
    New Page    url=${URL}

The unauthenticated user should be able to see home page
    [Arguments]    ${titleSecTionHomePageText}
    Get Text    ${TitleSectionHomePage}    ==    ${titleSecTionHomePageText}
    Scroll To    vertical=bottom
The unauthenticated user navigates to product page
    Click    ${ProductTab}

The unauthenticated user should be able to see product page
    Wait For Elements State    ${ProductCategory}    visible    timeout=10s
    Scroll To    vertical=bottom

The unauthenticated user navigates to see news page
    Click    ${NewsTab}

The unauthenticated user should be able to see news page
    Get Text    ${TitleSectionNewsPage}    ==    ${titleSecTionNewsPageText}
    Scroll To    vertical=bottom
The unauthenticated user navigates to see about us page
    Click    ${AboutUsTab}
The unauthenticated user should be able to see about us page
    Get Text    ${TitleSectionAboutUsPage}    ==    ${titleSectionAboutUsText}
    Scroll To    vertical=bottom

The unauthenticated user navigates to see purchase instruction page
    Click    ${GuilineTab}
    Wait For Elements State    ${PurchaseInstructionSubTab}    visible
    Click    ${PurchaseInstructionSubTab}
The unauthenticated user should be able to see purchase instruction page
    Get Text    ${TitleSectionPurchaseInstructionPage}    ==    ${titleSectionPInstructionText}
    Scroll To    vertical=bottom

The unauthenticated user navigates to see policy page
    Click    ${GuilineTab}
    Wait For Elements State    ${PolicySubTab}    visible
    Click    ${PolicySubTab}

The unauthenticated user should be able to see policy page
    Get Text    ${TitleSectionPolicyPage}    ==    ${titleSectionPolicyText}
    Scroll To    vertical=bottom

The unauthenticated user registers an account
    [Documentation]    This keyword verifies the unauthenticated user can register website by enter valid informations: 
    ...    username is ${username}, phone number is ${phoneNumber}, email is ${email}, password is ${password}, re-password is ${repassword}
    ...    Output: User can register account successfully
    New Browser    browser=chromium    headless=False
    New Page    url=${URL}
    Click    ${RegisterButton}
    Fill Text    ${UsernameField}    ${username}
    Fill Text    ${PhoneNumberField}    ${phoneNumber}
    Fill Text    ${EmailField}    ${email}
    Fill Text    ${PasswordField}    ${password}
    Fill Text    ${RepasswordField}    ${repassword}
    Click    ${LabelCheckBox}
    Click    ${RegisterButtonResPage}

The user should be able to login into web with "${username}" username and "${password}" password
    New Browser    browser=chromium    headless=False
    New Page    url=http://localhost:3000/log_in
    Fill Text    ${EmailFieldLogIn}    ${emailaccount9}
    Fill Text    ${PasswordFieldLogIn}    ${passwordaccount9}
    Click    ${LoginButtonLogIn}

The user should be able to see their "${username}" username in home page
    Get Text    ${UsernameHomePage}    ==    ${username}

The user searchs "${productName}" product name
    Fill Text    ${SearchFieldHomPages}    ${productName}
    ...    
The user should be able to see product "${productName}" in product page
    Wait For Elements State    ${SearchedProductText}
    Get Text    ${SearchedProductText}    ==    ${productName}

The user hovers and clicks "Quick View" button on the product "${productName}"
    Hover    ${SearchedProductText}