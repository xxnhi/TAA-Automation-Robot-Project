*** Settings ***
Documentation    This Feature verifies the unit test for lab3 of SE113
Library    Browser
Library    Collections
Resource    ../resources/Locators.robot
*** Variables ***


*** Test Cases ***
Unit test for login function
    [Documentation]    Include:
    ...    Verify the user can login successfully with valid email and password.
    ...    Verify the user login unsuccessfully with valid email but invalid password.
    ...    Verify the user login unsuccessfully with invalid Email and valid password.
    ...    Verify the user log in unsuccessfully with invalid Email and Password.
    ...    Verify the "Đăng nhập" button is not enabled when user login with leaving 2 input blank
    ...    Verify re-login by remember account successfull when user login with valid email and password (ignore)
    ...    Verify show/hide password successfully when click
    ...    Verify go to forgot password popup when click on "Bạn quên mật khẩu?"
    ...    Verify go to register page when click on "Đăng ký" button
    Login function    xxnhi2712@gmail.com    Xuannhi03!
    The user should be able to see their "xxnhi2712" username in home page
    
    Login function    xxnhi2712@gmail.com    abcd
    The user should be able to see message    Mật khẩu không khớp!    //small[@class='text-muted form-text']
    
    Login function    abcd@gmail.com    Xuannhi03!
    The user should be able to see message    Email không tồn tại!    //small[@class='text-muted form-text']

    Login function    abcd@gmail.com    abcd
    The user should be able to see message    Email không tồn tại!    //small[@class='text-muted form-text']
    
    Login function     ${EMPTY}    ${EMPTY}
    Background Color should contain    //button[@class='login_btn body-large']    background-color: rgba(29, 27, 32, 0.12)

    Login function     ${EMPTY}    Xuannhi03!
    Show/hide password successfully when click    Xuannhi03!

    Go to forgot password popup when click on "Bạn quên mật khẩu?"

    Go to register page when click on "Đăng ký" button

Unit test for forgot password function
    [Documentation]    Include:
    ...    Verify receive code through email successfully when enter valid email on forgot password popup
    ...    Verify receive code through email unsuccessfully when enter invalid email on forgot password popup
    ...    Verify receive code through email unsuccessfully when leave email input empty on forgot password popup
    ...    Verify receive OTP through phone successfully when enter valid phone number on forgot password popup
    ...    Verify receive OTP through phone unsuccessfully when enter invalid phone number on forgot password popup
    ...    Verify receive OTP through phone unsuccessfully when leave phone number input empty on forgot password popup
    Forgot password on email function    xxnhi2712@gmail.com
    Forgot password on email function    abcd
    Forgot password on email function    ${EMPTY}
    The user should be able to see message    //p[@class='not_found']    Không tìm thấy email
    Forgot password on phone number function    0933863327
    Forgot password on phone number function    abcd
    The user should be able to see message    //p[@class='not_found']    Không tìm thấy số điện thoại

Unit test for filter function for Admin's account management page function
    [Documentation]    Include:
    ...    Verify the admin can filter successfully with column "ID" and operator "chứa" with random input value
    ...    Verify the admin can filter unsuccessfully with column "ID" and operator "chứa" with invalid input value
    ...    Verify the admin can filter successfully with column "ID" and operator "chứa" with specific input value
    ...    Verify the admin can filter successfully with column "ID" and operator "chứa" with the ID name
    ...    Verify the admin can filter successfully with column "ID" and operator "bằng" with vid input value
    ...    Verify the admin can filter unsuccessfully with column "ID" and operator "bằng" with invalid input value
    ...    Verify the admin can filter unsuccessfully with column "ID" and operator "bằng" with specific input value
    ...    Verify the admin can filter successfully with column "ID" and operator "bắt đầu với" with random input value
    ...    Verify the admin can filter unsuccessfully with column "ID" and operator "bắt đầu với" with invalid input value
    ...    Verify the admin can filter successfully with column "ID" and operator "bắt đầu với" with specific input value
    ...    Verify the admin can filter successfully with column "ID" and operator "bắt đầu với" with the ID name
    ...    Verify the admin can filter successfully with column "ID" and operator "kết thúc với" with random input value
    ...    Verify the admin can filter unsuccessfully with column "ID" and operator "kết thúc với" with invalid input value
    ...    Verify the admin can filter successfully with column "ID" and operator "kết thúc với" with specific input value
    ...    Verify the admin can filter successfully with column "ID" and operator "kết thúc với" with the ID name
    ...    Verify the admin can filter successfully with column "ID" and operator "trống"
    ...    Verify the admin can filter successfully with column "ID" and operator "không trống"
    ...    Verify the admin can filter successfully with column "ID" and operator "bất kỳ trong số" with the random values
    ...    Verify the admin can filter successfully with column "Tên tài khoản" and operator "chứa" with random input value
    ...    Verify the admin can filter successfully with column "Tên tài khoản" and operator "chứa" with specific input value
    ...    Verify the admin can filter successfully with column "Tên tài khoản" and operator "bằng" with the valid name
    ...    Verify the admin can filter unsuccessfully with column "Tên tài khoản" and operator "bằng" with the invalid name
    ...    Verify the admin can filter successfully with column ""Tên tài khoản"" and operator ""bắt đầu với"" with valid input value
    ...    Verify the admin can filter successfully with column ""Tên tài khoản"" and operator ""kết thúc với"" with the valid input value
    ...    Verify the admin can filter successfully with column ""Tên tài khoản"" and operator ""trống"" 
    ...    Verify the admin can filter successfully with column ""Tên tài khoản"" and operator ""không trống"" 
    ...    Verify the admin can filter successfully with column ""Tên tài khoản"" and operator ""bất kỳ trong số"" with the random values
    ...    Verify the admin can filter successfully with column ""Số điện thoại"" and operator ""chứa"" with random input value
    ...    Verify the admin can filter unsuccessfully with column ""Số điện thoại"" and operator ""chứa"" with specific input value
    ...    Verify the admin can filter successfully with column "Số điện thoại" and operator "bằng" with the valid name
    ...    Verify the admin can filter unsuccessfully with column "Số điện thoại" and operator "bằng" with the invalid name
    ...    Verify the admin can filter successfully with column "Số điện thoại" and operator "bắt đầu với" with valid input value
    ...    Verify the admin can filter successfully with column "Số điện thoại" and operator "kết thúc với" with the valid input value
    ...    Verify the admin can filter successfully with column "Số điện thoại" and operator "trống"
    ...    Verify the admin can filter successfully with column "Số điện thoại" and operator "không trống"
    ...    Verify the admin can filter successfully with column "Số điện thoại" and operator "bất kỳ trong số" with the random values
    ...    Verify the admin can filter successfully with column ""CCCD"" and operator ""chứa"" with random input value
    ...    Verify the admin can filter unsuccessfully with column "CCCD" and operator "chứa" with specific input value
    ...    Verify the admin can filter successfully with column "CCCD" and operator "bằng" with the valid name
    ...    Verify the admin can filter successfully with column ""unsuccessfully with column "CCCD" and operator "bằng" with the invalid name
    ...    Verify the admin can filter successfully with column "CCCD" and operator "bắt đầu với" with valid input value
    ...    Verify the admin can filter successfully with column "CCCD" and operator "kết thúc với" with the valid input value
    ...    Verify the admin can filter successfully with column "CCCD" and operator "trống"
    ...    Verify the admin can filter successfully with column "CCCD" and operator "không trống"
    ...    Verify the admin can filter successfully with column "CCCD" and operator "bất kỳ trong số" with the valid values
    
    Filter function for Admin's account management page function    ${FilterButtonAdminAccountManagementPage}    ${IDColumnFilterAdminAccount}    ${ContainOperatorFilterAdminAccount}    ba

    Filter function for Admin's account management page function    ${FilterButtonAdminAccountManagementPage}    ${IDColumnFilterAdminAccount}    ${ContainOperatorFilterAdminAccount}    667

    Filter function for Admin's account management page function    ${FilterButtonAdminAccountManagementPage}    ${IDColumnFilterAdminAccount}    ${ContainOperatorFilterAdminAccount}    &&

    Filter function for Admin's account management page function    ${FilterButtonAdminAccountManagementPage}    ${IDColumnFilterAdminAccount}    ${ContainOperatorFilterAdminAccount}    65f3e9a27ef3c2b6f3b7d0d8

    Filter function for Admin's account management page function    ${FilterButtonAdminAccountManagementPage}    ${IDColumnFilterAdminAccount}    ${EqualOperatorFilterAdminAccount}    65f3e9a27ef3c2b6f3b7d0d8

    Filter function for Admin's account management page function    ${FilterButtonAdminAccountManagementPage}    ${IDColumnFilterAdminAccount}    ${EqualOperatorFilterAdminAccount}    667

    Filter function for Admin's account management page function    ${FilterButtonAdminAccountManagementPage}    ${IDColumnFilterAdminAccount}    ${EqualOperatorFilterAdminAccount}    &&

    Filter function for Admin's account management page function    ${FilterButtonAdminAccountManagementPage}    ${IDColumnFilterAdminAccount}    ${StartWithOperatorFilterAdminAccount}    66

    Filter function for Admin's account management page function    ${FilterButtonAdminAccountManagementPage}    ${IDColumnFilterAdminAccount}    ${StartWithOperatorFilterAdminAccount}    667

    Filter function for Admin's account management page function    ${FilterButtonAdminAccountManagementPage}    ${IDColumnFilterAdminAccount}    ${StartWithOperatorFilterAdminAccount}    &&

    Filter function for Admin's account management page function    ${FilterButtonAdminAccountManagementPage}    ${IDColumnFilterAdminAccount}    ${StartWithOperatorFilterAdminAccount}    65f3e9a27ef3c2b6f3b7d0d8

    Filter function for Admin's account management page function    ${FilterButtonAdminAccountManagementPage}    ${IDColumnFilterAdminAccount}    ${EndWithOperatorFilterAdminAccount}    a6

    Filter function for Admin's account management page function    ${FilterButtonAdminAccountManagementPage}    ${IDColumnFilterAdminAccount}    ${EndWithOperatorFilterAdminAccount}    667

    Filter function for Admin's account management page function    ${FilterButtonAdminAccountManagementPage}    ${IDColumnFilterAdminAccount}    ${EndWithOperatorFilterAdminAccount}    &&

    Filter function for Admin's account management page function for empty    ${FilterButtonAdminAccountManagementPage}    ${IDColumnFilterAdminAccount}    ${EmptyOperatorFilterAdminAccount}

    Filter function for Admin's account management page function for empty   ${FilterButtonAdminAccountManagementPage}    ${IDColumnFilterAdminAccount}    ${NotEmptyOperatorFilterAdminAccount}

    Filter function for Admin's account management page function for anyoperator    ${FilterButtonAdminAccountManagementPage}    ${IDColumnFilterAdminAccount}    ${AnyOperatorFilterAdminAccount}    65f3e9a27ef3c2b6f3b7d0d8, 66

    Filter function for Admin's account management page function    ${FilterButtonAdminAccountManagementPage}    ${NameAccountColumnFilterAdminAccount}    ${ContainOperatorFilterAdminAccount}    B

    Filter function for Admin's account management page function    ${FilterButtonAdminAccountManagementPage}    ${NameAccountColumnFilterAdminAccount}    ${ContainOperatorFilterAdminAccount}    &&

    Filter function for Admin's account management page function    ${FilterButtonAdminAccountManagementPage}    ${NameAccountColumnFilterAdminAccount}    ${EqualOperatorFilterAdminAccount}    lamcam

    Filter function for Admin's account management page function    ${FilterButtonAdminAccountManagementPage}    ${NameAccountColumnFilterAdminAccount}    ${EqualOperatorFilterAdminAccount}    lamcamhi

    Filter function for Admin's account management page function    ${FilterButtonAdminAccountManagementPage}    ${NameAccountColumnFilterAdminAccount}    ${StartWithOperatorFilterAdminAccount}    n

    Filter function for Admin's account management page function    ${FilterButtonAdminAccountManagementPage}    ${NameAccountColumnFilterAdminAccount}    ${EndWithOperatorFilterAdminAccount}    n

    Filter function for Admin's account management page function for empty    ${FilterButtonAdminAccountManagementPage}    ${NameAccountColumnFilterAdminAccount}    ${EmptyOperatorFilterAdminAccount}

    Filter function for Admin's account management page function for empty    ${FilterButtonAdminAccountManagementPage}    ${NameAccountColumnFilterAdminAccount}    ${NotEmptyOperatorFilterAdminAccount}

    Filter function for Admin's account management page function for anyoperator    ${FilterButtonAdminAccountManagementPage}    ${NameAccountColumnFilterAdminAccount}    ${AnyOperatorFilterAdminAccount}    lamcam, 0348918225

    Filter function for Admin's account management page function    ${FilterButtonAdminAccountManagementPage}    ${PhoneNumberColumnFilterAdminAccount}    ${ContainOperatorFilterAdminAccount}    66

    Filter function for Admin's account management page function    ${FilterButtonAdminAccountManagementPage}    ${PhoneNumberColumnFilterAdminAccount}    ${ContainOperatorFilterAdminAccount}    &&

    Filter function for Admin's account management page function    ${FilterButtonAdminAccountManagementPage}    ${PhoneNumberColumnFilterAdminAccount}    ${EqualOperatorFilterAdminAccount}    0961089666

    Filter function for Admin's account management page function    ${FilterButtonAdminAccountManagementPage}    ${PhoneNumberColumnFilterAdminAccount}    ${EqualOperatorFilterAdminAccount}    80&

    Filter function for Admin's account management page function    ${FilterButtonAdminAccountManagementPage}    ${PhoneNumberColumnFilterAdminAccount}    ${StartWithOperatorFilterAdminAccount}    0

    Filter function for Admin's account management page function    ${FilterButtonAdminAccountManagementPage}    ${PhoneNumberColumnFilterAdminAccount}    ${EndWithOperatorFilterAdminAccount}    9

    Filter function for Admin's account management page function for empty    ${FilterButtonAdminAccountManagementPage}    ${PhoneNumberColumnFilterAdminAccount}    ${EmptyOperatorFilterAdminAccount}

    Filter function for Admin's account management page function for empty    ${FilterButtonAdminAccountManagementPage}    ${PhoneNumberColumnFilterAdminAccount}    ${NotEmptyOperatorFilterAdminAccount}

    Filter function for Admin's account management page function for anyoperator    ${FilterButtonAdminAccountManagementPage}    ${PhoneNumberColumnFilterAdminAccount}    ${AnyOperatorFilterAdminAccount}    0348918225, lamcam,

    Filter function for Admin's account management page function    ${FilterButtonAdminAccountManagementPage}    ${CCCDColumnFilterAdminAccount}    ${ContainOperatorFilterAdminAccount}    11

    Filter function for Admin's account management page function    ${FilterButtonAdminAccountManagementPage}    ${CCCDColumnFilterAdminAccount}    ${ContainOperatorFilterAdminAccount}    &&

    Filter function for Admin's account management page function    ${FilterButtonAdminAccountManagementPage}    ${CCCDColumnFilterAdminAccount}    ${EqualOperatorFilterAdminAccount}    072303001113

    Filter function for Admin's account management page function    ${FilterButtonAdminAccountManagementPage}    ${CCCDColumnFilterAdminAccount}    ${EqualOperatorFilterAdminAccount}    80&

    Filter function for Admin's account management page function    ${FilterButtonAdminAccountManagementPage}    ${CCCDColumnFilterAdminAccount}    ${StartWithOperatorFilterAdminAccount}    07

    Filter function for Admin's account management page function    ${FilterButtonAdminAccountManagementPage}    ${CCCDColumnFilterAdminAccount}    ${EndWithOperatorFilterAdminAccount}    3

    Filter function for Admin's account management page function for empty    ${FilterButtonAdminAccountManagementPage}    ${CCCDColumnFilterAdminAccount}    ${EmptyOperatorFilterAdminAccount}

    Filter function for Admin's account management page function for empty    ${FilterButtonAdminAccountManagementPage}    ${CCCDColumnFilterAdminAccount}    ${NotEmptyOperatorFilterAdminAccount}

    Filter function for Admin's account management page function for anyoperator    ${FilterButtonAdminAccountManagementPage}    ${CCCDColumnFilterAdminAccount}    ${AnyOperatorFilterAdminAccount}    7854218653


Unit test for change password function
    [Documentation]    Include:
    ...    - Verify the user can change password successfully with valid current password, valid new password and valid confirm new password
    ...    - Verify the user can change password unsuccessfully with valid current password, invalid new password and confirm new password
    ...    - Verify the user can change password unsuccessfully with valid current password, invalid new password and confirm new password
    ...    - Verify the user can change password unsuccessfully with valid current password, invalid new password and confirm new password
    ...    - Verify the user can change password unsuccessfully with valid current password, invalid new password and confirm new password
    ...    - Verify the user can change password unsuccessfully with valid current password, valid new password and invalid confirm new password
    ...    - Verify the user can change password unsuccessfully with valid current password, invalid new password and invalid confirm new password
    ...    - Verify the user can change password unsuccessfully with invalid current password, valid new password and valid confirm new password
    ...    - Verify the user can change password unsuccessfully with invalid current password, invalid new password and valid confirm new password
    ...    - Verify the user can change password unsuccessfully with invalid current password, invalid new password and invalid confirm new password
    ...    - Verify the "Xác nhận" button is not enabled when user leaving 3 input blank
    ...    - Verify the "Xác nhận" button is not enabled when user leaving 2 input blank
    ...    - Verify the "Xác nhận" button is not enabled when user leaving 2 input blank
    ...    - Verify the "Xác nhận" button is not enabled when user leaving 2 input blank
    ...    - Verify the "Xác nhận" button is not enabled when user leaving 1 input blank
    ...    - Verify the "Xác nhận" button is not enabled when user leaving 1 input blank
    ...    - Verify the "Xác nhận" button is not enabled when user leaving 1 input blank
    ...    - Run each data 
    Change password function    TestAccount27@    abcd1234@    abcd1234@
    The user should be able to see message    Cập nhật mật khẩu thành công!    //h1[contains(text(),'Cập nhật mật khẩu thành công!')]

    Change password function    TestAccount27@    abc123@    abc123@
    The user should be able to see message    Mật khẩu phải có ít nhất 8 ký tự, bao gồm cả chữ, số, và ký tự đặc biệt!    //div[@class='err']

    Change password function    TestAccount27@    abcd1234    abcd1234
    The user should be able to see message    Mật khẩu phải có ít nhất 8 ký tự, bao gồm cả chữ, số, và ký tự đặc biệt!    //div[@class='err']

    Change password function    TestAccount27@    abcdefg@    abcdefg@
    The user should be able to see message    Mật khẩu phải có ít nhất 8 ký tự, bao gồm cả chữ, số, và ký tự đặc biệt!    //div[@class='err']

    Change password function    TestAccount27@    1234567@    1234567@
    The user should be able to see message    Mật khẩu phải có ít nhất 8 ký tự, bao gồm cả chữ, số, và ký tự đặc biệt!    //div[@class='err']

    Change password function    TestAccount27@    1234abcd@    1234abcd
    The user should be able to see message    Mật khẩu xác nhận không trùng khớp!    //div[@class='err']

    Change password function    TestAccount27@    1234abcd    1234abc
    The user should be able to see message    Mật khẩu phải có ít nhất 8 ký tự, bao gồm cả chữ, số, và ký tự đặc biệt!    //div[contains(text(),'Mật khẩu phải có ít nhất 8 ký tự, bao gồm cả chữ, ')]
    The user should be able to see message    Mật khẩu xác nhận không trùng khớp!    //main//div[3]//div[1]//div[1]//div[1]

    Change password function    TestAccount    1234abcd@    1234abcd@
    The user should be able to see message    Mật khẩu không khớp!    //div[@class='err']

#FAIL LOGIC - ID:9G
    Change password function    abcd    1234abcd    1234ad
    The user should be able to see message    Mật khẩu không khớp!    //div[@class='err']
    The user should be able to see message    Mật khẩu phải có ít nhất 8 ký tự, bao gồm cả chữ, số, và ký tự đặc biệt!    //div[contains(text(),'Mật khẩu phải có ít nhất 8 ký tự, bao gồm cả chữ, ')]
#FAIL LOGIC - ID:10G
    Change password function    TestAccount    1234abcd    1234a
    The user should be able to see message    Mật khẩu không khớp!    //div[@class='err']
    The user should be able to see message    Mật khẩu phải có ít nhất 8 ký tự, bao gồm cả chữ, số, và ký tự đặc biệt!    //div[@class='col-lg-9 col-12']//div[2]//div[1]//div[1]//div[1]
    The user should be able to see message    Mật khẩu xác nhận không trùng khớp!    //main//div[3]//div[1]//div[1]//div[1]
    
    Change password function    ${EMPTY}    ${EMPTY}    ${EMPTY}
    Background Color should contain    //button[@class='save-btn body-large']    background-color: rgba(29, 27, 32, 0.12)

    Change password function    TestAccount27@    ${EMPTY}    ${EMPTY}
    Background Color should contain    //button[@class='save-btn body-large']    background-color: rgba(29, 27, 32, 0.12)

    Change password function    ${EMPTY}    1234abcd@    ${EMPTY}
    Background Color should contain    //button[@class='save-btn body-large']    background-color: rgba(29, 27, 32, 0.12)

    Change password function    ${EMPTY}    ${EMPTY}    1234abcd@    
    Background Color should contain    //button[@class='save-btn body-large']    background-color: rgba(29, 27, 32, 0.12)

    Change password function    ${EMPTY}    1234abcd@    1234abcd@    
    Background Color should contain    //button[@class='save-btn body-large']    background-color: rgba(29, 27, 32, 0.12)

    Change password function    1234abcd@    ${EMPTY}    1234abcd@    
    Background Color should contain    //button[@class='save-btn body-large']    background-color: rgba(29, 27, 32, 0.12)

    Change password function    1234abcd@    1234abcd@    ${EMPTY}    
    Background Color should contain    //button[@class='save-btn body-large']    background-color: rgba(29, 27, 32, 0.12)

*** Keywords ***

Login function
    [Documentation]  This keyword is used to test the login function of the application
    [Tags]    Unit test
    [Arguments]    ${emailUser}    ${passwordUser}
    New Browser    browser=chromium    headless=False
    New Page    url=http://localhost:3000/log_in
    Fill Text    ${EmailFieldLogIn}    ${emailUser}
    Fill Text    ${PasswordFieldLogIn}    ${passwordUser}
    Click    ${LoginButtonLogIn}

The user should be able to see their "${username}" username in home page
    Get Text    ${UsernameHomePage}    ==    ${username}

The user should be able to see message
    [Arguments]    ${text}    ${textLocator}
    Get Text    ${textLocator}    ==    ${text}

Background Color should contain
    [Arguments]    ${element}    ${EXPECTED_COLOR}
    ${element1}    Get Element    ${element}
    ${color}    Get Attribute    ${element1}    style
    Should Contain    ${color}    ${EXPECTED_COLOR}

Show/hide password successfully when click
    [Arguments]    ${passwordText}
    Click    ${HideEyeIcon}
    Get Text    ${PasswordFieldLogIn}    ==    ${passwordText}

Go to forgot password popup when click on "Bạn quên mật khẩu?"
    New Browser    browser=chromium    headless=False
    New Page    url=http://localhost:3000/log_in
    Click    ${ForgotPasswordText}
    Wait For Elements State    //div[@class='modal-content']    visible

Go to register page when click on "Đăng ký" button
    New Browser    browser=chromium    headless=False
    New Page    url=http://localhost:3000/log_in
    Click    ${SignupButtonInLoginpage}
    Wait For Elements State    //div[@class='register_form col-8 col']    visible

Forgot password on email function
    [Documentation]  This keyword is used to test the forgot password function of the application
    [Tags]    Unit test
    [Arguments]    ${emailUser}
    New Browser    browser=chromium    headless=False
    New Page    url=http://localhost:3000/log_in
    Click    ${ForgotPasswordText}
    Click    ${EmailButtonForgotPassword}
    Fill Text    ${InputEmailFieldForgotPassword}    ${emailUser}
    Click    ${GetCodeButton}

Forgot password on phone number function
    [Documentation]  This keyword is used to test the forgot password function of the application
    [Tags]    Unit test
    [Arguments]    ${phoneNumber}
    New Browser    browser=chromium    headless=False
    New Page    url=http://localhost:3000/log_in
    Click    ${ForgotPasswordText}
    Click    ${PhoneNumberButtonForgotPassword}
    Fill Text    ${InputEmailFieldForgotPassword}    ${phoneNumber}
    Click    ${GetCodeButton}

Filter function for Admin's account management page function
    [Documentation]  This keyword is used to test the filter function 
    ...    for Admin's account management page  password function of the application
    [Tags]    Unit test
    [Arguments]    ${filterButtonAdminAccountManagementPage}    ${column1FilterAdminAccount}    ${operator1FilterAdminAccount}    ${value}
    New Browser    browser=chromium    headless=False
    New Page    url=http://localhost:4000
    Login admin function    AdminTAA01    AdminTAA01
    Click    ${filterButtonAdminAccountManagementPage}
    Click    ${ColumnFilterAdminAccount}
    Click    ${column1FilterAdminAccount}
    Click    ${OperatorFilterAdminAccount}
    Click    ${operator1FilterAdminAccount}
    Fill Text    ${ValueFilterAdminAccount}    ${value}
    Get Elements    //div[@role='rowgroup']
    Sleep    3s

Login admin function
    [Arguments]    ${emailTextField}    ${passwordTextField}
    Fill Text    //input[@id='formBasicEmail']    ${emailTextField}
    Fill Text    //input[@id='formBasicPassword']    ${passwordTextField}
    Click    //button[contains(text(),'Đăng nhập')]


Filter function for Admin's account management page function for empty
    [Documentation]  This keyword is used to test the filter function for empty
    ...    for Admin's account management page  password function of the application
    [Tags]    Unit test
    [Arguments]    ${filterButtonAdminAccountManagementPage}    ${column1FilterAdminAccount}    ${operator1FilterAdminAccount}
    New Browser    browser=chromium    headless=False
    New Page    url=http://localhost:4000
    Login admin function    AdminTAA01    AdminTAA01
    Click    ${filterButtonAdminAccountManagementPage}
    Click    ${ColumnFilterAdminAccount}
    Click    ${column1FilterAdminAccount}
    Click    ${OperatorFilterAdminAccount}
    Click    ${operator1FilterAdminAccount}
    Get Elements    //div[@role='rowgroup']
    Sleep    3s

Filter function for Admin's account management page function for anyoperator
    [Documentation]  This keyword is used to test the filter function 
    ...    for Admin's account management page  password function of the application
    [Tags]    Unit test
    [Arguments]    ${filterButtonAdminAccountManagementPage}    ${column1FilterAdminAccount}    ${operator1FilterAdminAccount}    ${value}
    New Browser    browser=chromium    headless=False
    New Page    url=http://localhost:4000
    Login admin function    AdminTAA01    AdminTAA01
    Click    ${filterButtonAdminAccountManagementPage}
    Click    ${ColumnFilterAdminAccount}
    Click    ${column1FilterAdminAccount}
    Click    ${OperatorFilterAdminAccount}
    Click    ${operator1FilterAdminAccount}
    Fill Text    ${AnyValueFilterAdminAccount}    ${value}
    Get Elements    //div[@role='rowgroup']
    Sleep    3s

Change password function
    [Documentation]  This keyword is used to test the change password function 
    [Tags]    Unit test
    [Arguments]    ${currentPass}    ${newPass}    ${confPass}
    Login function    testaccount27@gmail.com    TestAccount27@
    Click    ${Avatar}
    Click    ${PersonalInfoUnderAvatar}
    Click    ${ChangePasswordSubMenu}
    Fill Text    ${CurrentPasswordInput}    ${currentPass}
    Fill Text    ${NewPasswordInput}    ${newPass}
    Fill Text    ${ConfirmPasswordInput}    ${confPass}
    Click    ${ConfirmButton}

