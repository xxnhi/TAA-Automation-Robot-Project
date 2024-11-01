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
    The user should be able to see error message    Mật khẩu không khớp!    //small[@class='text-muted form-text']
    
    Login function    abcd@gmail.com    Xuannhi03!
    The user should be able to see error message    Email không tồn tại!    //small[@class='text-muted form-text']

    Login function    abcd@gmail.com    abcd
    The user should be able to see error message    Email không tồn tại!    //small[@class='text-muted form-text']
    
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
    The user should be able to see error message    //p[@class='not_found']    Không tìm thấy email
    Forgot password on phone number function    0933863327
    Forgot password on phone number function    abcd
    The user should be able to see error message    //p[@class='not_found']    Không tìm thấy số điện thoại

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

The user should be able to see error message
    [Arguments]    ${text}    ${textLocator}
    Get Text    ${textLocator}    ==    ${text}

Background Color should contain
    [Arguments]    ${element}    ${EXPECTED_COLOR}
    ${element}    Get Element    //button[@class='login_btn body-large']
    ${color}    Get Attribute    ${element}    style
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
    [Arguments]
    New Browser    browser=chromium    headless=False
    New Page    url=http://localhost:4000
    Login admin function    AdminTAA01    AdminTAA01
    Click    ${FilterButtonAdminAccountManagementPage}
    Click    div[id=':r4e:']
    Click    //li[normalize-space()='ID']
    Click    div[id=':r4g:']
    Click    //li[contains(text(),'chứa')]
    Fill Text    input[id=':r51:']    ba

Login admin function
    [Arguments]    ${emailTextField}    ${passwordTextField}
    Fill Text    //input[@id='formBasicEmail']    ${emailTextField}
    Fill Text    //input[@id='formBasicPassword']    ${passwordTextField}
    Click    //button[contains(text(),'Đăng nhập')]

