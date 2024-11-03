*** Settings ***
Documentation    This Feature verifies the unit test for lab3 of SE113
Library    Browser
Library    Collections
Resource    ../resources/Locators.robot
Resource    e2e_flow_for_user.robot

*** Variables ***
${productName}    Nhẫn cặp dễ thương dành cho cặp đôi
${username}    testaccount27
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
    ...    -- Run each data --
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

Unit test for change product quantity function
    [Documentation]    Include:
    ...    Verify change quantity successfully when click on increase button
    ...    Verify change quantity successfully when click on decrease button and current quantity >1 
    ...    Verify not change when click on decrease button and current quantity = 1
    ...    Verify change quantity successfully when fill out the positive number in quantity field
    ...    Verify cannot fill out other characters in quantity field
    ...    Verify change quantity unsuccessfully when fill out 0 in quantity field
    ...    Verify update quantity when reload page
    Change product quantity function    ${productName}

Unit test for add to cart from popup quick view product function
    [Documentation]    Include:
    ...    Verify add product to cart successfully when user click on "Thêm vào giỏ hàng" button from popup quick view product
    ...    Verify add product to cart successfully when user add quantity product item and click on "Thêm vào giỏ hàng" button
    Add to cart from popup quick view product function    ${productName}
    Add to cart from popup quick view product function with quantity    ${productName}    3

Unit test for add a news function
    [Documentation]    Include:
    ...    Verify add a news function unsucessfully when admin click on "Thêm bài viết" button and leave all fields empty
    ...    Verify add a news function unsucessfully when admin click on "Thêm bài viết" button
    ...    Verify add a news function sucessfully when admin click on "Thêm bài viết" button
    Add a news function    ${EMPTY}    ${EMPTY}    ${EMPTY}    ${EMPTY}    ${EMPTY}    ${EMPTY}    ${EMPTY}    ${EMPTY}
    Background Color should contain    //div[@role='dialog']//button[2]    background-color: rgb(227, 227, 228)
    Add a news function    Hello    Bài viết mới    Tiêu để phụ 1    Tiêu để phụ 2    ${EMPTY}    ${EMPTY}    ${EMPTY}    ${EMPTY}
    Background Color should contain    //div[@role='dialog']//button[2]    background-color: rgb(227, 227, 228)
    Add a news function    Hello    Bài viết mới    Tiêu để phụ 1    Tiêu để phụ 2    Tiêu để phụ 3    Nội dung phụ 1    Nội dung phụ 2    Nội dung phụ 3

Unit test for edit a news function
    [Documentation]    Include:
    ...    Verify edit a news sucessfully when admin click on "Sửa" button 
    ...    Verify edit a news sucessfully when admin click on "Sửa" button do not change anything
    ...    Verify edit a news sucessfully when admin click on "Sửa" button and edit one field
    Edit a news function

Unit test for filter function for Admin's news management page function
    [Documentation]    Include:
    ...    - Verify the admin can filter successfully with column "Tiêu đề" and operator "chứa" with random input value
    ...    Verify the admin can filter successfully with column "Tiêu đề" and operator "chứa" with specific input value
    ...    Verify the admin can filter successfully with column "Tiêu đề" and operator "bắt đầu với" with valid input value
    ...    Verify the admin can filter successfully with column "Tiêu đề" and operator "kết thúc với" with valid input value
    ...    Verify the admin can filter successfully with column "Nội dung" and operator "chứa" with random input value
    ...    Verify the admin can filter successfully with column "Nội dung" and operator "chứa" with specific input value
    ...    Verify the admin can filter successfully with column "Nội dung" and operator "bắt đầu với" with valid input value
    ...    Verify the admin can filter successfully with column "Nội dung" and operator "kết thúc với" with valid input value
    ...    Verify the admin can filter successfully with column "Ngày đăng" and operator "chứa" with the valid number
    ...    Verify the admin can filter successfully with column "Ngày đăng" and operator "chứa" with characters, not numbers
    ...    Verify the admin can filter successfully with column "Ảnh" and operator "trống"
    ...    Verify the admin can filter successfully with column "Ảnh" and operator "không trống"

    Filter function for Admin's news management page function    ${FilterButtonAdminAccountManagementPage}    ${TitleColumnFilterAdminNew}    ${ContainOperatorFilterAdminAccount}    B
    Filter function for Admin's news management page function    ${FilterButtonAdminAccountManagementPage}    ${TitleColumnFilterAdminNew}    ${ContainOperatorFilterAdminAccount}    &&
    Filter function for Admin's news management page function    ${FilterButtonAdminAccountManagementPage}    ${TitleColumnFilterAdminNew}    ${StartWithOperatorFilterAdminAccount}    C
    Filter function for Admin's news management page function    ${FilterButtonAdminAccountManagementPage}    ${TitleColumnFilterAdminNew}    ${EndWithOperatorFilterAdminAccount}    C
    Filter function for Admin's news management page function    ${FilterButtonAdminAccountManagementPage}    ${ContentColumnFilterAdminNew}    ${ContainOperatorFilterAdminAccount}    B
    Filter function for Admin's news management page function    ${FilterButtonAdminAccountManagementPage}    ${ContentColumnFilterAdminNew}    ${ContainOperatorFilterAdminAccount}    &&
    Filter function for Admin's news management page function    ${FilterButtonAdminAccountManagementPage}    ${ContentColumnFilterAdminNew}    ${StartWithOperatorFilterAdminAccount}    M
    Filter function for Admin's news management page function    ${FilterButtonAdminAccountManagementPage}    ${ContentColumnFilterAdminNew}    ${EndWithOperatorFilterAdminAccount}    M
    Filter function for Admin's news management page function    ${FilterButtonAdminAccountManagementPage}    ${UploadDateColumnFilterAdminNew}    ${ContainOperatorFilterAdminAccount}    2024
    Filter function for Admin's news management page function    ${FilterButtonAdminAccountManagementPage}    ${UploadDateColumnFilterAdminNew}    ${ContainOperatorFilterAdminAccount}    j
    Filter function for Admin's news management page function for empty    ${FilterButtonAdminAccountManagementPage}    ${ImageColumnFilterAdminNew}    ${EmptyOperatorFilterAdminAccount}
    Filter function for Admin's news management page function for empty    ${FilterButtonAdminAccountManagementPage}    ${ImageColumnFilterAdminNew}    ${NotEmptyOperatorFilterAdminAccount}

Unit test for add a product function
    [Documentation]    Include:
    ...    Verify add a product function sucessfully when admin click on "Thêm sản phẩm" button
    ...    Verify add a product function sucessfully when admin click on "Thêm sản phẩm" button
    ...    Verify add a product function sucessfully when admin click on "Thêm sản phẩm" button
    Add a product function    ${EMPTY}    ${EMPTY}    ${EMPTY}    ${EMPTY}    ${EMPTY}    Vong_tay    ${EMPTY}    ${EMPTY}    ${EMPTY}
    Background Color should contain    ${SaveButtonAddProduct}    color: rgb(153, 151, 151)
    Add a product function    Vòng tay    230000    ${EMPTY}    ${EMPTY}    ${EMPTY}   Vong_tay    ${EMPTY}    ${EMPTY}    ${EMPTY}
    Background Color should contain    ${SaveButtonAddProduct}    color: rgb(153, 151, 151)
    Add a product function    Vòng tay 4 con chó    230000    10    2024-11-30     50    Vong_tay    Vòng tay trẻ trung, đính đá    Màu hồng    Nhỏ
    
Unit test for edit a product function
    [Documentation]    Include:
    ...    Verify edit a product sucessfully when admin click on "Sửa" button
    ...    Verify edit a product sucessfully when admin click on "Sửa" button and do not change anything
    ...    Verify edit a product sucessfully when admin click on "Sửa" button and edit one field
    Edit a product function

Unit test for filter function for Admin's product management page function
    [Documentation]    Include:
    ...    - Verify the admin can filter successfully with column "Tên sản phẩm" and operator "chứa" with random input value
    ...    Verify the admin can filter successfully with column "Tên sản phẩm" and operator "chứa" with specific input value
    ...    Verify the admin can filter successfully with column "Tên sản phẩm" and operator "bắt đầu với" with valid input value
    ...    Verify the admin can filter successfully with column "Tên sản phẩm" and operator "kết thúc với" with valid input value
    ...    Verify the admin can filter successfully with column "Giá" and operator "bằng" with random input value
    ...    Verify the admin can filter successfully with column "Giảm giá" and operator "bằng" with specific input value
    ...    Verify the admin can filter successfully with column "Số lượng đã bán" and operator "không trống" with valid input value
    ...    Verify the admin can filter successfully with column "Số lượng còn lại" and operator "không trống" with valid input value
    Filter function for Admin's product management page function    ${FilterButtonAdminAccountManagementPage}    ${NameColumnFilterAdminProduct}    ${ContainOperatorFilterAdminAccount}    E
    Filter function for Admin's product management page function    ${FilterButtonAdminAccountManagementPage}    ${NameColumnFilterAdminProduct}    ${ContainOperatorFilterAdminAccount}    &&
    Filter function for Admin's product management page function    ${FilterButtonAdminAccountManagementPage}    ${NameColumnFilterAdminProduct}    ${StartWithOperatorFilterAdminAccount}    T
    Filter function for Admin's product management page function    ${FilterButtonAdminAccountManagementPage}    ${NameColumnFilterAdminProduct}    ${EndWithOperatorFilterAdminAccount}    d
    Filter function for Admin's product management page function    ${FilterButtonAdminAccountManagementPage}    ${PriceColumnFilterAdminProduct}    ${EqualOperatorFilterAdminAccount}    150.000
    Filter function for Admin's product management page function    ${FilterButtonAdminAccountManagementPage}    ${DiscountColumnFilterAdminProduct}    ${ContainOperatorFilterAdminAccount}    20
    Filter function for Admin's product management page function for empty    ${FilterButtonAdminAccountManagementPage}    ${SoldQuantityColumnFilterAdminProduct}    ${NotEmptyOperatorFilterAdminAccount}
    Filter function for Admin's product management page function for empty    ${FilterButtonAdminAccountManagementPage}    ${RemainQuantityColumnFilterAdminProduct}    ${NotEmptyOperatorFilterAdminAccount}

Unit test for order function
    [Documentation]    Include:
    ...    -- Ignored the wrong cases from the beginning tested by manual and user has never added a shipping address before --
    ...    Verify add shipping address in the order page successfully when user fills valid values in all the fields
    ...    Verify add shipping address in the order page unsuccessfully when user enter only ""Tên người nhận"" field  
    ...    Verify add shipping address in the order page unsuccessfully when user enter only ""Số điện thoại"" field  
    ...    Verify add shipping address in the order page unsuccessfully when user enter only ""Địa chỉ tổng quan"" field  
    ...    Verify add shipping address in the order page unsuccessfully when user enter only "Địa chỉ chi tiết" field
    ...    Verify add shipping address in the order page unsuccessfully when user enter all flieds but leave "Tên người nhận" field empty
    ...    Verify add shipping address in the order page unsuccessfully when user enter all flieds but leave ""Số điện thoại"" field empty
    ...    Verify add shipping address in the order page unsuccessfully when user enter all flieds but leave ""Địa chỉ tổng quan"" field empty
    ...    Verify add shipping address in the order page successfully when user enter all flieds but leave ""Địa chỉ chi tiết"" field empty
    ...    Verify add shipping address unsuccessfully when enter invalid value in ""Số điện thoại"" field
    ...    Verify add shipping address unsuccessfully when enter special character in ""Số điện thoại"" field
    ...    Verify order successfully when user choose 1st option in "Phương thức vận chuyển" and "Phương thức thanh toán"
    ...    Verify order successfully when user choose 2nd option in "Phương thức vận chuyển" and 1st option in "Phương thức thanh toán"
    ...    Verify order successfully when user choose 1st option in "Phương thức vận chuyển" and 2nd option in "Phương thức thanh toán" and "VNPay" option in "Thanh toán trực tuyến"
    ...    Verify order successfully when user choose 2nd option in "Phương thức vận chuyển" and 2nd option in "Phương thức thanh toán" and "VNPay" option in "Thanh toán trực tuyến"
    ...    -- Run each data --
    Order function when add shipping address    Xuân Nhi    0933863327    khu phố 6, Linh Trung, Thủ Đức, Hồ Chí Minh     KTX khu A   
    Order function when add shipping address    Xuân Nhi    ${EMPTY}    ${EMPTY}     ${EMPTY}
    Order function when add shipping address    ${EMPTY}    0933863327    ${EMPTY}     ${EMPTY}
    Order function when add shipping address    ${EMPTY}    ${EMPTY}    khu phố 6, Linh Trung, Thủ Đức, Hồ Chí Minh     ${EMPTY}   
    Order function when add shipping address    ${EMPTY}    ${EMPTY}    ${EMPTY}     KTX khu A
    Order function when add shipping address    Xuân Nhi    0933863327    ${EMPTY}     KTX khu A   
    Order function when add shipping address    ${EMPTY}    0933863327    khu phố 6, Linh Trung, Thủ Đức, Hồ Chí Minh     KTX khu A   
    Order function when add shipping address    Xuân Nhi    ${EMPTY}    khu phố 6, Linh Trung, Thủ Đức, Hồ Chí Minh     KTX khu A   
    Order function when add shipping address    Xuân Nhi    0933863327    ${EMPTY}     KTX khu A   
    Order function when add shipping address    Bùi Xuân Nhi    0933863329    Thủ Đức, Hồ Chí Minh     ${EMPTY}   
    Order function when add shipping address    Xuân Nhi    112233    khu phố 6, Linh Trung, Thủ Đức, Hồ Chí Minh     KTX khu A   
    Order function when add shipping address    Xuân Nhi    !@#$%^&    khu phố 6, Linh Trung, Thủ Đức, Hồ Chí Minh     KTX khu A   
    Order function    ${2HoursShippingMethod}    ${CODPaymentMethod}
    Order function    ${72HoursShippingMethod}    ${CODPaymentMethod}
    Order function online    ${2HoursShippingMethod}    ${OnlinePaymentMethod}
    Order function online    ${72HoursShippingMethod}    ${OnlinePaymentMethod}

    
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

Change product quantity function
    [Documentation]  This keyword is used to test the change product quantity function
    ...    -- And user must check cart, and execute when the cart is empty --
    [Tags]    Unit test
    [Arguments]    ${productName}
    Login function    testaccount27@gmail.com    TestAccount27@
    The user should be able to see their "${username}" username in home page
    The user searches for the product "${productName}"
    The user hovers and clicks "Quick View" button on the product "${productName}"
    The user should be able to see "${ProductQuickView}" in quick view
    The user clicks on "${ViewDetailButton}" view detail button
    The user clicks on "${AddCartButton}" add cart button
    The user navigates to see cart page
    The user edits the quantity of cart item for unit test

The user edits the quantity of cart item for unit test
    Click    ${TickAllCheckBox}
    Wait For Elements State    ${MoneyTotal}    visible
    Get Text    ${MoneyTotal}    ==    145.000 đ
    Sleep    1s
    Click    ${PlusQuantityProduct}
    Wait For Elements State    ${MoneyTotal}    visible
    Get Text    ${MoneyTotal}    ==    295.000 đ
    Sleep    1s
    Click    ${MinusQuantityProduct}
    Wait For Elements State    ${MoneyTotal}    visible
    Get Text    ${MoneyTotal}    ==    145.000 đ
    Sleep    1s
    Click    ${MinusQuantityProduct}
    Wait For Elements State    ${MoneyTotal}    visible
    Get Text    ${MoneyTotal}    ==    145.000 đ
    Sleep    1s
    Fill Text    ${InputQuantityProduct}    5
    Wait For Elements State    ${MoneyTotal}    visible
    Get Text    ${MoneyTotal}    ==    745.000 đ
    Sleep    1s
    Fill Text    ${InputQuantityProduct}    2
    Wait For Elements State    ${MoneyTotal}    visible
    Get Text    ${MoneyTotal}    ==    295.000 đ
    Sleep    1s
    Fill Text    ${InputQuantityProduct}    0
    Wait For Elements State    ${MoneyTotal}    visible
    Get Text    ${MoneyTotal}    ==    145.000 đ
    Sleep    1s

The user searches for the product "${productName}"
    Fill Text    ${SearchFieldHomPages}    ${productName}
    Click    ${SearchButton}
    Sleep    3s

The user hovers and clicks "Quick View" button on the product "${productName}"
    Hover    ${ProductDivItem}
    Wait For Elements State    ${QuickViewButtonWhenHover}    visible    timeout=10s
    Click    ${QuickViewButtonWhenHover}

The user hovers and clicks "Buy Now" button on the product "${productName}"
    Hover    ${ProductDivItem}
    Wait For Elements State    ${QuickViewButtonWhenHover}    visible    timeout=10s
    Click    ${BuyNowButtonWhenHover}

The user should be able to see "${ProductQuickView}" in quick view
    Wait For Elements State    ${ProductQuickView}    visible    timeout=10s

The user clicks on "${ViewDetailButton}" view detail button
    Click    ${ViewDetailButton}
    Sleep    3s

The user clicks on "${AddCartButton}" add cart button
    Click    ${AddCartButton}

The user navigates to see cart page
    Click    ${CartIcon}

The user clicks on "${AddCartButtonQuickView}" add cart button in quick view
    Click    ${AddCartButtonQuickView}

Add to cart from popup quick view product function 
    [Documentation]  This keyword is used to test the add to cart from popup quick view product function
    ...    -- And user must check cart, and execute when the cart is empty --
    [Tags]    Unit test
    [Arguments]    ${productName}
    Login function    testaccount27@gmail.com    TestAccount27@
    The user should be able to see their "${username}" username in home page
    The user searches for the product "${productName}"
    The user hovers and clicks "Quick View" button on the product "${productName}"
    The user should be able to see "${ProductQuickView}" in quick view
    The user clicks on "${AddCartButtonQuickView}" add cart button in quick view

Add to cart from popup quick view product function with quantity
    [Documentation]  This keyword is used to test the add to cart from popup quick view product function
    ...    -- And user must check cart, and execute when the cart is empty --
    [Tags]    Unit test
    [Arguments]    ${productName}    ${quantity}
    Login function    testaccount27@gmail.com    TestAccount27@
    The user should be able to see their "${username}" username in home page
    The user searches for the product "${productName}"
    The user hovers and clicks "Quick View" button on the product "${productName}"
    The user should be able to see "${ProductQuickView}" in quick view
    Fill Text    ${InputAddCartButtonQuickView}    ${quantity}
    The user clicks on "${AddCartButtonQuickView}" add cart button in quick view

Add a news function
    [Documentation]  This keyword is used to test the add a news function
    [Tags]    Unit test
    [Arguments]    ${newsTitle}    ${newsContent}    ${newsSubTitle1}    ${newsSubTitle2}    ${newsSubTitle3}    ${newSubContent1}    ${newSubContent2}    ${newSubContent3}
    New Browser    browser=chromium    headless=False
    New Page    url=http://localhost:4000
    Login admin function    AdminTAA01    AdminTAA01
    Click    ${NewsAdminSubMenu}
    Click    ${AddNewsButton}
    Fill Text    ${TitleFieldAddNews}    ${newsTitle}
    Fill Text    ${ContentFieldAddNews}    ${newsContent}
    Fill Text    ${SubTitle1FieldAddNews}    ${newsSubTitle1}
    Fill Text    ${SubTitle2FieldAddNews}    ${newsSubTitle2}
    Fill Text    ${SubTitle3FieldAddNews}    ${newsSubTitle3}
    Fill Text    ${SubContent1FieldAddNews}    ${newSubContent1}
    Fill Text    ${SubContent2FieldAddNews}    ${newSubContent2}
    Fill Text    ${SubContent3FieldAddNews}    ${newSubContent3}
    Upload File By Selector    ${UploadFieldAddNews}    ../TAA-Automation-Robot-Project/resources/image/IMG_4294.jpg
    Click    //div[@role='dialog']//button[2]
    Sleep    5s
    
Edit a news function
    [Documentation]  This keyword is used to test the edit a news function
    [Tags]    Unit test
    New Browser    browser=chromium    headless=False
    New Page    url=http://localhost:4000
    Login admin function    AdminTAA01    AdminTAA01
    Click    ${NewsAdminSubMenu}
    Click    ${TickAllCheckBoxNewsAdmin}
    Background Color should contain    ${EditButtonNewsAdmin}    background-color: rgb(227, 227, 228)    
    Sleep    3s
    Click    ${DoneTickAllCheckBoxNewsAdmin}
    Click    ${TickOneCheckBoxNewsAdmin}
    Click    ${EditButtonNewsAdmin}
    Background Color should contain    ${SaveButtonEditNewsAdmin}    background-color: rgb(227, 227, 228)
    Fill Text    ${TitleFieldEditNewsAdmin}    GIẢI MÃ PHONG CÁCH Y2K 1
    Sleep    3s
    Click    ${SaveButtonEditNewsAdmin}
    Sleep    3s

Filter function for Admin's news management page function
    [Documentation]  This keyword is used to test the filter function 
    ...    for Admin's news management page  password function of the application
    [Tags]    Unit test
    [Arguments]    ${filterButtonAdminAccountManagementPage}    ${column1FilterAdminAccount}    ${operator1FilterAdminAccount}    ${value}
    New Browser    browser=chromium    headless=False
    New Page    url=http://localhost:4000
    Login admin function    AdminTAA01    AdminTAA01
    Click    ${NewsAdminSubMenu}
    Click    ${filterButtonAdminNewsManagementPage}
    Click    ${ColumnFilterAdminAccount}
    Click    ${column1FilterAdminAccount}
    Click    ${OperatorFilterAdminAccount}
    Click    ${operator1FilterAdminAccount}
    Fill Text    ${ValueFilterAdminAccount}    ${value}
    Get Elements    //div[@role='rowgroup']
    Sleep    3s

Filter function for Admin's news management page function for empty
    [Documentation]  This keyword is used to test the filter function
    ...    for Admin's news management page of the application
    [Tags]    Unit test
    [Arguments]    ${filterButtonAdminAccountManagementPage}    ${column1FilterAdminAccount}    ${operator1FilterAdminAccount}
    New Browser    browser=chromium    headless=False
    New Page    url=http://localhost:4000
    Login admin function    AdminTAA01    AdminTAA01
    Click    ${NewsAdminSubMenu}
    Click    ${filterButtonAdminNewsManagementPage}
    Click    ${ColumnFilterAdminAccount}
    Click    ${column1FilterAdminAccount}
    Click    ${OperatorFilterAdminAccount}
    Click    ${operator1FilterAdminAccount}
    Get Elements    //div[@role='rowgroup']
    Sleep    3s

Add a product function
    [Documentation]  This keyword is used to test the add a product function
    [Tags]    Unit test
    [Arguments]    ${name}    ${price}    ${dis}    ${endDate}    ${quantity}    ${category}    ${des}    ${color}    ${size}
    New Browser    browser=chromium    headless=False
    New Page    url=http://localhost:4000
    Login admin function    AdminTAA01    AdminTAA01
    Click    ${ProductAdminSubMenu}
    Click    ${AddProductButtonAdmin}
    Fill Text    ${NameFieldAddProduct}    ${name}
    Fill Text    ${PriceFieldAddProduct}    ${price}
    Fill Text    ${DiscountFieldAddProduct}    ${dis}
    Fill Text    ${EndDateDisFieldAddProduct}    ${endDate}
    Fill Text    ${QuantityFieldAddProduct}    ${quantity}
    Select Options By    ${CateFieldAddProduct}    value    ${category}
    Fill Text    ${DesFieldAddProduct}    ${des}
    Fill Text    ${ColorFieldAddProduct}    ${color}
    Fill Text    ${SizeFieldAddProduct}    ${size}
    Upload File By Selector    ${ImageFieldAddProduct}    ../TAA-Automation-Robot-Project/resources/image/IMG_4294.jpg
    Sleep    5s
    Click    ${SaveButtonAddProduct}
    Sleep    10s

Edit a product function
    [Documentation]  This keyword is used to test the edit a product function
    [Tags]    Unit test
    New Browser    browser=chromium    headless=False
    New Page    url=http://localhost:4000
    Login admin function    AdminTAA01    AdminTAA01
    Click    ${ProductAdminSubMenu}
    Click    ${TickAllCheckBoxProductAdmin}
    Click    ${TickAllCheckBoxProductAdmin}
    Background Color should contain    ${EditButtonProductAdmin}    background-color: rgb(227, 227, 228)    
    Sleep    3s
    Click    ${DoneTickAllCheckBoxProductAdmin}
    Click    ${TickOneCheckBoxProductAdmin}
    Click    ${EditButtonProductAdmin}
    Background Color should contain    ${UpdateButtonEditProductAdmin}    background-color: rgb(227, 227, 228)
    Fill Text    ${TitleFieldEditProductAdmin}    1 Vòng tay thời tiết - mây và cầu vồng
    Sleep    3s
    Click    ${UpdateButtonEditProductAdmin}
    Sleep    3s

Filter function for Admin's product management page function
    [Documentation]  This keyword is used to test the filter function 
    ...    for Admin's product management page 
    [Tags]    Unit test
    [Arguments]    ${filterButtonAdminAccountManagementPage}    ${column1FilterAdminAccount}    ${operator1FilterAdminAccount}    ${value}
    New Browser    browser=chromium    headless=False
    New Page    url=http://localhost:4000
    Login admin function    AdminTAA01    AdminTAA01
    Click    ${ProductAdminSubMenu}
    Click    ${filterButtonAdminProductManagementPage}
    Click    ${ColumnFilterAdminAccount}
    Click    ${column1FilterAdminAccount}
    Click    ${OperatorFilterAdminAccount}
    Click    ${operator1FilterAdminAccount}
    Fill Text    ${ValueFilterAdminAccount}    ${value}
    Get Elements    //div[@role='rowgroup']
    Sleep    3s

Filter function for Admin's product management page function for empty
    [Documentation]  This keyword is used to test the filter function 
    ...    for Admin's product management page 
    [Tags]    Unit test
    [Arguments]    ${filterButtonAdminAccountManagementPage}    ${column1FilterAdminAccount}    ${operator1FilterAdminAccount}
    New Browser    browser=chromium    headless=False
    New Page    url=http://localhost:4000
    Login admin function    AdminTAA01    AdminTAA01
    Click    ${ProductAdminSubMenu}
    Click    ${filterButtonAdminProductManagementPage}
    Click    ${ColumnFilterAdminAccount}
    Click    ${column1FilterAdminAccount}
    Click    ${OperatorFilterAdminAccount}
    Click    ${operator1FilterAdminAccount}
    Get Elements    //div[@role='rowgroup']
    Sleep    3s

Order function when add shipping address
    [Documentation]  This keyword is used to test the order function when add shipping address
    [Tags]    Unit test
    [Arguments]    ${usernameOrder}    ${phoneNumberOrder}    ${generalAddressOrder}    ${detailAddressOrder}
    Login function    testaccount27@gmail.com    TestAccount27@
    The user should be able to see their "${username}" username in home page
    The user searches for the product "${productName}"
    The user hovers and clicks "Buy Now" button on the product "${productName}"
    Click    ${AddAddressButton}
    Fill Text    ${RecipientNameAddAddress}    ${usernameOrder}
    Fill Text    ${PhoneNumberAddAddress}    ${phoneNumberOrder}
    Fill Text    ${GeneralAddressAddAddress}    ${generalAddressOrder}
    Fill Text    ${DetailAddressAddAddress}    ${detailAddressOrder}
    Click    ${AcceptButtonAddAddress}

Order function
    [Documentation]  This keyword is used to test the order function when add shipping address, shipping method, payment method
    [Tags]    Unit test
    [Arguments]    ${shippingMethod}    ${paymentMethod}
    Order function when add shipping address    Xuân Nhi    0933863327    khu phố 6, Linh Trung, Thủ Đức, Hồ Chí Minh     KTX khu A
    Click    ${shippingMethod}
    Click    ${paymentMethod}
    Click    ${OrderButtonOrder}

Order function online
    [Documentation]  This keyword is used to test the order function when add shipping address, shipping method, payment method online
    [Tags]    Unit test
    [Arguments]    ${shippingMethod}    ${paymentMethod}
    Order function when add shipping address    Xuân Nhi    0933863327    khu phố 6, Linh Trung, Thủ Đức, Hồ Chí Minh     KTX khu A
    Click    ${shippingMethod}
    Click    ${paymentMethod}
    Click    ${VNPAYMethod}    
    Click    ${OrderButtonOrder}
