*** Settings ***
Documentation    This Feature verifies the solution E2E scenario of website for user
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
${generalAddress}    Thủ Đức, Hồ Chí Minh, and
${detailAddress}    KTX Khu A. Linh Trung

# Header
${URL}    http://localhost:3000/
${ProductTab}    //a[contains(text(),'Sản phẩm')]
${NewsTab}    //a[@class='nav-link'][contains(text(),'Tin tức')]
${AboutUsTab}    //a[@class='nav-link'][contains(text(),'Về chúng tôi')]
${GuilineTab}    //a[@role='button'][contains(text(),'Hướng dẫn')]
${PurchaseInstructionSubTab}    //a[@role='button']//a[contains(text(),'Hướng dẫn mua hàng')]
${PolicySubTab}    //a[@role='button']//a[normalize-space()='Chính sách']
${RegisterButton}    //a[contains(text(),'Đăng ký')]
${CartIcon}    //a[@class='cart_link']//*[name()='svg']
# Home Page
${TitleSectionHomePage}    //h1[contains(text(),'Sản phẩm nổi bật trong tuần')]
${UsernameHomePage}    //div[@class='user_name col']
${SearchFieldHomPages}    //input[@placeholder='Tìm kiếm']
${SearchedProductText}    //a[contains(text(),'Nhẫn cặp dễ thương dành cho cặp đôi')]
${SearchButton}    //div[@class='search-bar']//*[name()='svg']


# Product Page
${ProductCategory}    //div[@class='product__category col-xxl-3 col-xl-3 col-lg-3 col-md-4 col-sm-4']
${ProductDivItem}    //div[@class='product__item body-large']
${QuickViewButtonWhenHover}    //div[@class='product__item__view']
${ProductQuickView}    //div[@class='quick__view__body modal-body']
${ViewDetailButton}    //button[@class='button__detail__view']//span[1]
${ProductDetail}    //div[@class='productDetail']
${AddCartButton}    //button[contains(text(),'Thêm vào giỏ hàng')]
${AddCartSuccessfullyText}    //div[@class='modal-noti-add-cart-success-body modal-body']

# News Page
${TitleSectionNewsPage}    //h1[contains(text(),'TUẦN VỪA QUA')]

# About Us Page
${TitleSectionAboutUsPage}    //h1[contains(text(),'VỀ CHÚNG TÔI')]

# Purchase Instruction Page
${TitleSectionPurchaseInstructionPage}    //h1[contains(text(),'HƯỚNG DẪN MUA HÀNG TRÊN WEBSITE')]

# Policy Page
${TitleSectionPolicyPage}    //div[@class='policy__title1 display-large']

#Cart Page
${TickAllCheckBox}    //td[@class='item__checkbox']//*[name()='svg']
${PlusQuantityProduct}    //div[@class='item__number__increase']
${MinusQuantityProduct}    //div[@class='item__number__decrease']
${MoneyTotal}    //div[@class='money__total__value']
${ProceedOrderButton}    //div[@class='cart__content__bill col-xl-3 col-lg-3 col-md-12']//span[1]


#Order Page
${ContentOrderPage}    //div[@class='content_rootLayout']
${AddAddressButton}    //div[@class='location__button']//button[@type='submit']
${RecipientNameAddAddress}    //input[@id='loca_pers_name']
${PhoneNumberAddAddress}    //input[@id='loca_pers_phone']
${GeneralAddressAddAddress}    //input[@id='loca_address']
${DetailAddressAddAddress}    //input[@id='loca_detail']
${AcceptButtonAddAddress}    //div[@class='btn__wrapper']//button[@type='submit']
${Option1ShippingMethod}    //span[contains(text(),'Giao hàng nhanh trong 2 giờ (Trễ tặng 100k)')]
${Option2ShippingMethod}    //span[contains(text(),'Giao hàng trong 72 giờ')]
${Option1PaymentMethod}    //span[contains(text(),'Thanh toán tiền khi nhận hàng (COD)')]
${Option2PaymentMethod}    //span[contains(text(),'Thanh toán trực tuyến')]
${OrderButton}    //div[@class='order__content__bill col-lg-4 col-md-12']//span[1]
${OrderSuccesfullyText}    //div[@class='order-payment-status']
${ViewOrdersButton}    (//button[@type='button'])[3]
${OrderPlaced}    //p[@class='body-medium']
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
Test case E2E for user    
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
    # When The user clicks on ${LogOutButton} in the menu
    # And The user clicks on ${LogOutButtonPopup} in the log out popup
    # Then The user logs out of the website successfully 
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

The user should be able to login into web with "${username}" email and "${password}" password
    New Browser    browser=chromium    headless=False
    New Page    url=http://localhost:3000/log_in
    Fill Text    ${EmailFieldLogIn}    ${emailaccount9}
    Fill Text    ${PasswordFieldLogIn}    ${passwordaccount9}
    Click    ${LoginButtonLogIn}

The user should be able to see their "${username}" username in home page
    Get Text    ${UsernameHomePage}    ==    ${username}

The user searches for the product "${productName}" 
    Fill Text    ${SearchFieldHomPages}    ${productName}
    Click    ${SearchButton}     
The user should be able to see product "${productName}" in product page
    Wait For Elements State    ${SearchedProductText}
    Get Text    ${SearchedProductText}    ==    ${productName}

The user hovers and clicks "Quick View" button on the product "${productName}"
    Hover    ${ProductDivItem}
    Wait For Elements State    ${QuickViewButtonWhenHover}    visible    timeout=10s
    Click    ${QuickViewButtonWhenHover}

The user should be able to see "${ProductQuickView}" in quick view
    Wait For Elements State    ${ProductQuickView}    visible    timeout=10s
    Sleep    3s

The user clicks on "${ViewDetailButton}" view detail button
    Click    ${ViewDetailButton}

The user should be able to see "${ProductDetail}" in the product detail page
    Wait For Elements State    ${ProductDetail}    visible    timeout=10s
    Scroll To    vertical=bottom

The user clicks on "${AddCartButton}" add cart button
    Click    ${AddCartButton}

The product should be able to add to cart successfully
    Wait For Elements State    ${AddCartSuccessfullyText}    visible

The user navigates to see cart page
    Click    ${CartIcon}

The user edits the quantity of cart item
    Click    ${TickAllCheckBox}
    Wait For Elements State    ${MoneyTotal}    visible
    Get Text    ${MoneyTotal}    ==    145.000 đ
    Click    ${PlusQuantityProduct}
    Wait For Elements State    ${MoneyTotal}    visible
    Get Text    ${MoneyTotal}    ==    295.000 đ
    Click    ${MinusQuantityProduct}
    Wait For Elements State    ${MoneyTotal}    visible
    Get Text    ${MoneyTotal}    ==    145.000 đ

The user clicks on "${ProceedOrderButton}" proceed order button
    Click    ${ProceedOrderButton}

The user should be able to go to order page
    Wait For Elements State    ${ContentOrderPage}    visible
    
The user fills shipping address, shipping method, payment method
    There is no address then the user add a new address
    Click    ${Option1ShippingMethod}
    Click    ${Option1PaymentMethod}

There is no address then the user add a new address
    Click    ${AddAddressButton}
    Fill Text    ${RecipientNameAddAddress}    ${username}
    Fill Text    ${PhoneNumberAddAddress}    ${phoneNumber}
    Fill Text    ${GeneralAddressAddAddress}    ${generalAddress}
    Fill Text    ${DetailAddressAddAddress}    ${detailAddress}
    Click    ${AcceptButtonAddAddress}

The user clicks on "${OrderButton}" button
    Click    ${OrderButton}

The users should be able to see the order successfully placed notification
    Get Text    ${OrderSuccesfullyText}    ==    Đặt hàng thành công!

The user navigates to order page by click on ${ViewOrdersButton}
    Click    ${ViewOrdersButton}

Then The user should be able to see ${OrderPlaced}
    Get Text    ${OrderPlaced}    ==    Trang cung cấp thông tin về các đơn hàng theo danh mục