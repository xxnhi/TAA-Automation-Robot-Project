*** Variables ***
# Header
${URL}    http://localhost:3000/
${URL_ADMINACCOUNT}    http://localhost:4000/accounts
${URL_ADMIN}    http://localhost:4000/
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
${PersonalInfoUnderAvatar}    //a[normalize-space()='Thông tin cá nhân']
# Home Page
${TitleSectionHomePage}    //h1[contains(text(),'Sản phẩm nổi bật trong tuần')]
${UsernameHomePage}    //div[@class='user_name col']
${SearchFieldHomPages}    //input[@placeholder='Tìm kiếm']
${SearchedProductText}    //a[contains(text(),'Bông tai mèo và cá đáng yêu')]
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
${AddCartButtonQuickView}    //button[@class='button__add__cart body-large']//span[1]
${InputAddCartButtonQuickView}    //input[@id='number__product__select']
${BuyNowButtonWhenHover}    (//div[contains(text(),'Mua ngay')])[1]
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
${InputQuantityProduct}    //input[@id='number__product__cart-mobile']
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
${ColumnButtonAdminAccount}                  //*[@id=":r4:"] 
${ColumnFilterAdminAccount}    //html[1]/body[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[3]/div[1]/div[1]
${IDColumnFilterAdminAccount}    //li[normalize-space()='ID']
${NameAccountColumnFilterAdminAccount}    //li[contains(text(),'Tên tài khoản')]
${PhoneNumberColumnFilterAdminAccount}    //li[normalize-space()='Số điện thoại']
${EmailColumnFilterAdminAccount}    //li[normalize-space()='Email']
${CCCDColumnFilterAdminAccount}    //li[normalize-space()='CCCD']
${OperatorFilterAdminAccount}    //html[1]/body[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[4]/div[1]/div[1]
${ContainOperatorFilterAdminAccount}    //li[contains(text(),'chứa')]
${EqualOperatorFilterAdminAccount}    //li[contains(text(),'bằng')]
${StartWithOperatorFilterAdminAccount}    //li[contains(text(),'bắt đầu với')]
${EndWithOperatorFilterAdminAccount}    //li[contains(text(),'kết thúc với')]
${EmptyOperatorFilterAdminAccount}    //li[normalize-space()='trống']
${NotEmptyOperatorFilterAdminAccount}    //li[normalize-space()='không trống']
${AnyOperatorFilterAdminAccount}    //li[contains(text(),'bất kỳ trong số')]


${ValueFilterAdminAccount}    //html[1]/body[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[5]/div[1]/div[1]/input[1]

${AnyValueFilterAdminAccount}    //html[1]/body[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[5]/div[1]/div[1]/div[1]/input[1]

# Personal Page
${ChangePasswordSubMenu}    //span[contains(text(),'Đổi mật khẩu')]
${CurrentPasswordInput}    //input[@id='old_password']
${NewPasswordInput}    //input[@id='new_password']
${ConfirmPasswordInput}    //input[@id='confirm_password']
${ConfirmButton}    //button[@class='save-btn body-large']

# Admin's news management page

${NewsAdminSubMenu}    //html[1]/body[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/ul[1]/li[4]/a[1]
${AddNewsButton}    //div[@class='header__new']//button[1]//span[1]
${TitleFieldAddNews}    //input[@id='b_title']
${ContentFieldAddNews}    //textarea[@id='b_content']
${SubTitle1FieldAddNews}    //div[@role='dialog']//div[3]//input[1]
${SubTitle2FieldAddNews}    //div[@role='dialog']//div[3]//input[2]
${SubTitle3FieldAddNews}    //div[@role='dialog']//div[3]//input[3]
${SubContent1FieldAddNews}    //textarea[@placeholder='Nội dung phụ 1']
${SubContent2FieldAddNews}    //textarea[@placeholder='Nội dung phụ 2']
${SubContent3FieldAddNews}    //textarea[@placeholder='Nội dung phụ 3']
${UploadFieldAddNews}    //input[@id='b_image']
${TickAllCheckBoxNewsAdmin}    //input[@aria-label='Select all rows']
${DoneTickAllCheckBoxNewsAdmin}    //input[@aria-label='Unselect all rows']
${EditButtonNewsAdmin}    //div[@class='header__new']//button[2]
${TickOneCheckBoxNewsAdmin}    //div[@class='MuiDataGrid-row MuiDataGrid-row--firstVisible']//input[@aria-label='Select row']
${SaveButtonEditNewsAdmin}    //div[@role='dialog']//button[2]
${TitleFieldEditNewsAdmin}    //input[@id='b_title']
${TitleColumnFilterAdminNew}    //li[contains(text(),'Tiêu đề')]
${ImageColumnFilterAdminNew}    //li[contains(text(),'Ảnh')]
${UploadDateColumnFilterAdminNew}    //li[contains(text(),'Ngày đăng')]
${ContentColumnFilterAdminNew}    //li[contains(text(),'Nội dung')]
${filterButtonAdminNewsManagementPage}    //html[1]/body[1]/div[1]/div[1]/div[1]/div[1]/div[2]/main[1]/div[1]/div[1]/div[2]/div[1]/div[2]/button[2]

# Admin's product management page
${ProductAdminSubMenu}    //a[@href='/products']
${AddProductButtonAdmin}    //div[@class='header__product']//button[1]//span[1]
${NameFieldAddProduct}    //input[@id='prod_name']
${PriceFieldAddProduct}    //input[@id='prod_cost']
${DiscountFieldAddProduct}    //input[@id='prod_discount']
${EndDateDisFieldAddProduct}    //input[@id='prod_end_date_discount']
${QuantityFieldAddProduct}    //input[@id='prod_num_avai']
${CateFieldAddProduct}    //select[@id='cate_name']
${DesFieldAddProduct}    //textarea[@id='prod_description']
${ColorFieldAddProduct}    //input[@id='prod_color']
${SizeFieldAddProduct}    //input[@id='prod_size']
${ImageFieldAddProduct}    //input[@id='prod_img']
${SaveButtonAddProduct}    //div[@role='dialog']//button[2]//span[1]
${TickAllCheckBoxProductAdmin}   //input[@aria-label='Select all rows'] 
${EditButtonProductAdmin}    //div[@class='header__product']//button[2]
${DoneTickAllCheckBoxProductAdmin}    //input[@aria-label='Unselect all rows']
${TickOneCheckBoxProductAdmin}    //div[@class='MuiDataGrid-row MuiDataGrid-row--firstVisible']//input[@aria-label='Select row']
${UpdateButtonEditProductAdmin}    //div[@role='dialog']//button[2]
${TitleFieldEditProductAdmin}    //input[@id='prod_name']
${filterButtonAdminProductManagementPage}    //html[1]/body[1]/div[1]/div[1]/div[1]/div[1]/div[2]/main[1]/div[1]/div[1]/div[2]/div[1]/div[2]/button[2]
${NameColumnFilterAdminProduct}    //li[contains(text(),'Tên sản phẩm')]
${PriceColumnFilterAdminProduct}    //li[normalize-space()='Giá']
${DiscountColumnFilterAdminProduct}    //li[contains(text(),'Giảm giá(%)')]
${SoldQuantityColumnFilterAdminProduct}    //li[contains(text(),'Số lượng đã bán')]
${RemainQuantityColumnFilterAdminProduct}    //li[contains(text(),'Số lượng còn lại')]
${2HoursShippingMethod}    //span[contains(text(),'Giao hàng nhanh trong 2 giờ (Trễ tặng 100k)')]
${72HoursShippingMethod}    //span[contains(text(),'Giao hàng trong 72 giờ')]
${CODPaymentMethod}    //span[contains(text(),'Thanh toán tiền khi nhận hàng (COD)')]
${OnlinePaymentMethod}    //span[contains(text(),'Thanh toán trực tuyến')]
${OrderButtonOrder}    //div[@class='order__content__bill col-lg-4 col-md-12']//span[1]
${VNPAYMethod}    (//div[@class='payment-method-select'])[1]


#