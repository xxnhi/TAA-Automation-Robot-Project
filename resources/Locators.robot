*** Variables ***
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
${Avatar}    //button[@id='drop_down_btn']
${LogOutButton}    //div[@class='log_out_btn']
${LogOutButtonPopup}    //div[@class='btn__wrapper_logout']//button[@type='submit']
${SignInButton}    //a[contains(text(),'Đăng nhập')]
${SignUpButton}    //a[contains(text(),'Đăng ký')]
${FavoritesButton}    //div[@class='header__top']//a[3]
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
${HideEyeIcon}    //button[@class='show-pass']//*[name()='svg']
${ForgotPasswordText}    //p[@class='forgotPass body-large']
${SignupButtonInLoginpage}    //button[@class='body-large register_btn']
${EmailButtonForgotPassword}    button[class='email_button btn btn-primary']
${PhoneNumberButtonForgotPassword}    button[class='phone_button btn btn-primary']
${InputEmailFieldForgotPassword}    //input[@id='formBasicCheckbox']
${GetCodeButton}    //button[contains(text(),'Lấy mã')]

# Admin's account management page
${FilterButtonAdminAccountManagementPage}    //button[@id=':ra:']
${ColumnFilterAdminAccount}    //div[@id=':r5a:']
${IDColumnFilterAdminAccount}    //li[normalize-space()='ID']
${NameAccountColumnFilterAdminAccount}    //li[contains(text(),'Tên tài khoản')]
${PhoneNumberColumnFilterAdminAccount}    //li[normalize-space()='Số điện thoại']
${EmailColumnFilterAdminAccount}    //li[normalize-space()='Email']
${CCCDColumnFilterAdminAccount}    //li[normalize-space()='CCCD']
${OperatorFilterAdminAccount}    //div[@id=':r5c:']
${ContainOperatorFilterAdminAccount}    //li[contains(text(),'chứa')]
${EqualOperatorFilterAdminAccount}    //li[contains(text(),'bằng')]
${StartWithOperatorFilterAdminAccount}    //li[contains(text(),'bắt đầu với')]
${EndWithOperatorFilterAdminAccount}    //li[contains(text(),'kết thức với')]
${EmptyOperatorFilterAdminAccount}    //li[contains(text(),'trống')]



