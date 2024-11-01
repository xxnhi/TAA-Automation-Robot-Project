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
    ...    Verify re-login by remember account successfull when user login with valid email and password
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
    
    Login function     ""    ""
    Background Color should contain    //button[@class='login_btn body-large']    background-color: rgba(29, 27, 32, 0.12)

    Login function     ""    ""
    Background Color should contain    //button[@class='login_btn body-large']    background-color: rgba(29, 27, 32, 0.12)

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