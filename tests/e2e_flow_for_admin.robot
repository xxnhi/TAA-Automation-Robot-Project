*** Settings ***
Documentation    This Feature verifies the solution E2E scenario of website for user
Library    Browser
Library    Collections
Resource    ../resources/Locators.robot
*** Variables ***
#Argument
*** Variables ***
${emailAdmin}                  AdminTAA01
${passwordAdmin}               AdminTAA01
${DOWNLOAD_PATH}        /path/to/downloads
${ACCOUNT_FILE_NAME}    React App.csv

${productName}                 vòng cổ bánh bèo
${productPrice}                23000
${productDiscount}             5
${productDiscountEnddate}       2024-11-11
${productAmount}               5          
${productCate}            vòng cổ    
${productDescribe}             đẹp he
${productColour}               hồng
${productSize}                 5   
${productImage}                about.png 
${newsTitle}                   Flash Sale
${newsContent}                 Siêu sale giá sốc
${newsSubTitle1}               Hot deal vòng cổ
${newsSubTitle2}               Thời trang cực chất
${newsSubTitle3}               Combo tiết kiệm
${newsSubContent1}             Mua 1 tặng 1
${newsSubContent2}             Túi xách mẫu mới
${newsSubContent3}             Mua vòng tay giá 1đ  
${path}    Nam4/[SE113] Kiểm chứng phần mềm-20240914T045954Z-001/TAA Automation Robot Project/TAA-Automation-Robot-Project/resources/image/IMG_4294.jpg
*** Test Cases ***
Test case E2E for admin
    When The admin goes to TAA's admin page
    And The admin should be able to login into admin page with admin ${emailAdmin} account and ${passwordAdmin} password
    Then The admin should be able to see account page
    When The admin manages columns on the account page
    Then The admin should be able to hide or show column on the account page
    When The admin applies filters on the account page
    Then The admin should see filtered rows based on columns, operators, and values on the account page
    When The admin applies thickness settings on the account page
    Then The admin should be able to adjusts thickness settings on the account page
    When The admin exports the account data to CSV
    Then The file should be available on the local system
    When The admin navigates to order page
    Then The admin should be able to see order page
    When The admin manages columns on the order page
    Then The admin should be able to hide or show columns on the order page
    When The admin applies filters on the order page
    Then The admin should see filtered rows based on columns, operators, and values on the order page
    When The admin applies thickness settings on the order page
    Then The admin should be able to adjusts thickness settings on the order page
    When The admin exports the order data to CSV
    Then The file should be available on the local system
    When The admin navigates to product page
    Then The admin should be able to see product page
    When The admin adds a new product in admin panel    Vòng tay 3 ngôi sao    230000    10    2024-11-30     50    Vong_tay    Vòng tay trẻ trung, đính đá    Màu hồng    Nhỏ
    Then The product should be able to added successfully    Vòng tay 3
    When The admin deletes a product in admin panel
    Then The product should be able to deleted successfully
    When The admin manages columns on the product page
    Then The admin should be able to hide or show column on the product page
    When The admin applies filters on the product page
    Then The admin should see filtered rows based on columns, operators, and values on the product page
    When The admin applies thickness settings on the product page
    Then The admin should be able to adjusts thickness settings on the product page
    When The admin exports the product data to CSV
    Then The file should be available on the local system
    When The admin navigates to news page
    Then The admin should be able to see news page
    When The admin adds a new news in admin panel
    Then The news should be able to added successfully    Flash Sale
    When The admin deletes a news in admin panel
    Then The news should be able to deleted successfully
    When The admin manages columns on the news page
    Then The admin should be able to hide or show column on the news page
    When The admin applies filters on the news page
    Then The admin should see filtered rows based on columns, operators, and values on the news page
    When The admin applies thickness settings on the news page
    Then The admin should be able to adjusts thickness settings on the news page
    When The admin exports the news data to CSV
    Then The file should be available on the local system

*** Keywords ***
Sleep For 2 Seconds
    Sleep    2s

The admin goes to TAA's admin page
    [Documentation]    This keyword verifies that admin can go to admin page
    New Browser    browser=chromium    headless=False
    New Context    viewport={"width": 1500, "height":900 }
    New Page    url=${URL_ADMIN}
     
The admin should be able to login into admin page with admin ${emailAdmin} account and ${passwordAdmin} password
    Fill Text    //input[@id='formBasicEmail']    ${emailAdmin}
    Fill Text    ${PasswordFieldLogIn}    ${passwordAdmin}
    Sleep For 2 Seconds
    Click    //button[contains(text(),'Đăng nhập')]
    Sleep For 2 Seconds
  
The admin should be able to see account page
    New Page    url=${URL_ADMINACCOUNT}
    Scroll To    vertical=bottom

The admin manages columns on the account page
    [Documentation]    Toggles the visibility of columns on the account page.
    Click    ${ColumnButtonAdminAccount}
    Sleep For 2 Seconds

The admin should be able to hide or show column on the account page
    [Documentation]    Confirms column visibility changes on the account page.
    Click    //*[@id=":r5:"]/div/div[2]/div[3]
    Click    //*[@id=":r5:"]/div/div[2]/div[3]
    Click    ${ColumnButtonAdminAccount} 
    Sleep For 2 Seconds

The admin applies filters on the account page
    [Documentation]    Applies filters on the account page.
    Click     //*[@id=":ra:"]
    Sleep For 2 Seconds

The admin should see filtered rows based on columns, operators, and values on the account page
    [Documentation]    Verifies filtered rows are displayed based on filters applied.
    Wait For Elements State    xpath=//*[@id=":rb:"]/div/div[2]/div/div    visible    timeout=10s    
    Sleep For 2 Seconds

The admin applies thickness settings on the account page
    [Documentation]    Adjusts row thickness on the account page.
    Click    //*[@id=":rg:"]
    Sleep For 2 Seconds

The admin should be able to adjusts thickness settings on the account page
    [Documentation]    Verifies row thickness settings on the account page.
    Click    //*[@id=":rh:"]/li[1]
    Sleep For 2 Seconds

The admin exports the account data to CSV
    [Documentation]    Exports account data to a CSV file.
    Click    //*[@id=":rm:"]
    Click    //*[@id=":rn:"]/li[1]
    Sleep For 2 Seconds

The file should be available on the local system
    [Documentation]    Verifies that the downloaded account file exists on the local system.
    New Page    chrome://downloads/
    Wait For Elements State    css=[id='main-content']    visible    timeout=2s
    Sleep For 2 Seconds
    Click    cr-icon-button#quick-remove
    Sleep For 2 Seconds
    Close Page

        

When The admin navigates to order page
    [Documentation]    Navigates to the order page.
    Click    //*[@id="root"]/div/div/div/div[1]/div/div/div[2]/ul/li[2]/a 
    Sleep For 2 Seconds

The admin should be able to see order page
    [Documentation]    Verifies the order page is displayed.
    New Page    http://localhost:4000/order
    Scroll To    vertical=bottom
    Sleep For 2 Seconds

The admin manages columns on the order page
    [Documentation]    Toggles the visibility of columns on the order page.
    Click    //*[@id=":r4:"]
    Sleep For 2 Seconds

The admin should be able to hide or show columns on the order page
    [Documentation]    Confirms column visibility changes on the order page.
    Click    //*[@id=":r5:"]/div/div[2]/div[3]   
    Click    //*[@id=":r5:"]/div/div[2]/div[3]
    Click    //*[@id=":r4:"]
    Sleep For 2 Seconds

The admin applies filters on the order page
    [Documentation]    Applies filters on the order page.
    Click     //*[@id=":ra:"]
    Sleep For 2 Seconds

The admin should see filtered rows based on columns, operators, and values on the order page
    [Documentation]    Verifies filtered rows are displayed based on filters applied.
    Wait For Elements State    xpath=//*[@id=":rb:"]/div/div[2]/div/div    visible    timeout=10s    
    Sleep For 2 Seconds

The admin applies thickness settings on the order page
    [Documentation]    Adjusts row thickness on the order page.
    Click    //*[@id=":rg:"]
    Sleep For 2 Seconds

The admin should be able to adjusts thickness settings on the order page
    [Documentation]    Verifies row thickness settings on the order page.
    Click    //*[@id=":rh:"]/li[1]
    Sleep For 2 Seconds

The admin exports the order data to CSV
    [Documentation]    Exports account data to a CSV file.
    Click    //*[@id=":rm:"]
    Click    //*[@id=":rn:"]/li[1]
    Sleep For 2 Seconds

When The admin navigates to product page
    [Documentation]    Navigates to the product page.
    Click    //*[@id="root"]/div/div/div/div[1]/div/div/div[2]/ul/li[3]/a
    Sleep For 2 Seconds

The admin should be able to see product page
    [Documentation]    Verifies the product page is displayed.
    New Page    http://localhost:4000/products
    Scroll To    vertical=bottom
    Sleep For 2 Seconds

# The admin adds a new product in admin panel
#     [Documentation]    Adds a new product in the admin panel.
#     Click    ${AddProductButtonAdmin}  
#     Fill Text    ${NameFieldAddProduct}    ${productName}
#     Fill Text    ${PriceFieldAddProduct}   ${productPrice}
#     Fill Text    ${DiscountFieldAddProduct}   ${productDiscount}
#     Fill Text    ${EndDateDisFieldAddProduct}    ${productDiscountEnddate}
#     Fill Text    ${QuantityFieldAddProduct}    ${productAmount}
#     Click    ${CateFieldAddProduct}
#     Click    //*[@id="cate_name"]/option[2] 
#     Fill Text    ${DesFieldAddProduct}     ${productDescribe}
#     Fill Text    ${ColorFieldAddProduct}   ${productColour}
#     Fill Text    ${SizeFieldAddProduct}    ${productSize}
#     # Upload file by selector   ${ImageFieldAddProduct} ${productImage}   
#     Sleep For 2 Seconds

# Admin should be able to add product successfully
#     [Documentation]    Confirms product addition.
#     Click    //*[@id="ad_addproduct"]/div/div[3]/button[2]
#     Sleep For 2 Seconds

The admin deletes a product in admin panel
    [Documentation]    Deletes a product in the admin panel.
    Click    //*[@id="ad_product"]/div[2]/div/div[3]/div[1]/div[2]/div/div[1]/div[2]/span/input
    Click    //*[@id="ad_product"]/div[1]/div[2]/button[2]/span
    Sleep For 2 Seconds
    
The product should be able to deleted successfully
    [Documentation]    Confirms product deletion.
    Click    //div[@role='dialog']//button[2]//span[1]
    Sleep For 2 Seconds

The admin manages columns on the product page
    [Documentation]    Toggles the visibility of columns on the product page.
    Click    //*[@id=":r4:"]
    Sleep For 2 Seconds

The admin should be able to hide or show column on the product page
    [Documentation]    Confirms column visibility changes on the product page.
    Click    //*[@id=":r5:"]/div/div[2]/div[3]
    Click    //*[@id=":r5:"]/div/div[2]/div[3]
    Click    //*[@id=":r4:"] 
    Sleep For 2 Seconds

The admin applies filters on the product page
    [Documentation]    Applies filters on the product page.
    Click     //*[@id=":ra:"]
    Sleep For 2 Seconds

The admin should see filtered rows based on columns, operators, and values on the product page
    [Documentation]    Verifies filtered rows are displayed based on filters applied.
    Wait For Elements State    xpath=//*[@id=":rb:"]/div/div[2]/div/div    visible    timeout=10s    
    Sleep For 2 Seconds

The admin applies thickness settings on the product page
    [Documentation]    Adjusts row thickness on the product pagee.
    Click    //*[@id=":rg:"]
    Sleep For 2 Seconds

The admin should be able to adjusts thickness settings on the product page
    [Documentation]    Verifies row thickness settings on the product page.
    Click    //*[@id=":rh:"]/li[1]
    Sleep For 2 Seconds

The admin exports the product data to CSV
    [Documentation]    Exports product data to a CSV file.
    Click    //*[@id=":rm:"]
    Click    //*[@id=":rn:"]/li[1]
    Sleep For 2 Seconds

When The admin navigates to news page
    [Documentation]    Navigates to the news page.
    Click    //*[@id="root"]/div/div/div/div[1]/div/div/div[2]/ul/li[4]/a
    Sleep For 2 Seconds

The admin should be able to see news page
    [Documentation]    Verifies the news page is displayed.
    New Page    http://localhost:4000/news
    Scroll To    vertical=bottom
    Sleep For 2 Seconds
The admin adds a new product in admin panel
    [Documentation]  This keyword is used to test the add a product function
    [Arguments]    ${name}    ${price}    ${dis}    ${endDate}    ${quantity}    ${category}    ${des}    ${color}    ${size}
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
    Upload File By Selector    ${ImageFieldAddProduct}    ${path}
    Sleep    5s
    Click    ${SaveButtonAddProduct}
    Sleep    10s

The admin adds a new news in admin panel
    [Documentation]    Adds a new news item in the admin panel.
    Click    ${NewsAdminSubMenu}
    Click    ${AddNewsButton}
    Fill Text    ${TitleFieldAddNews}   ${newsTitle}
    Fill Text    ${ContentFieldAddNews}   ${newsContent}
    Fill Text    ${SubTitle1FieldAddNews}   ${newsSubTitle1}
    Fill Text    ${SubTitle2FieldAddNews}   ${newsSubTitle2}
    Fill Text    ${SubTitle3FieldAddNews}   ${newsSubTitle3}
    Fill Text    ${SubContent1FieldAddNews}   ${newsSubContent1}
    Fill Text    ${SubContent2FieldAddNews}   ${newsSubContent2}
    Fill Text    ${SubContent3FieldAddNews}   ${newsSubContent3}
    Upload File By Selector    //input[@id='b_image']    ${path}
    Sleep    5s
    Click    //div[@role='dialog']//button[2]//span[1]
    Sleep    10s

# Admin should be able to add news successfully
#     [Documentation]    Confirms news addition.
#     Click    //*[@id="ad_addnew"]/div/div[3]/button[2]
#     Sleep For 2 Seconds

The admin deletes a news in admin panel
    [Documentation]    Deletes a news item in the admin panel.
    Click    //*[@id="ad_new"]/div[2]/div/div[3]/div[1]/div[2]/div/div[1]/div[2]/span/input
    Click    //*[@id="ad_new"]/div[1]/div[2]/button[2]/span
    Sleep For 2 Seconds

The news should be able to deleted successfully
    [Documentation]    Confirms news deletion.
    Click    //div[@role='dialog']//button[2]//span[1]
    Sleep For 2 Seconds

The admin manages columns on the news page
    [Documentation]    Toggles the visibility of columns on the news page.
    Click    //*[@id=":r4:"]
    Sleep For 2 Seconds

The admin should be able to hide or show column on the news page
    [Documentation]    Confirms column visibility changes on the news page.
    Click    //*[@id=":r5:"]/div/div[2]/div[3]
    Click    //*[@id=":r5:"]/div/div[2]/div[3]
    Click    //*[@id=":r4:"] 
    Sleep For 2 Seconds

The admin applies filters on the news page
    [Documentation]    Applies filters on the news page.
    Click     //*[@id=":ra:"]
    Sleep For 2 Seconds

The admin should see filtered rows based on columns, operators, and values on the news page
    [Documentation]    Verifies filtered rows are displayed based on filters applied.
    Wait For Elements State    xpath=//*[@id=":rb:"]/div/div[2]/div/div    visible    timeout=10s    
    Sleep For 2 Seconds

The admin applies thickness settings on the news page
    [Documentation]    Adjusts row thickness on the news pagee.
    Click    //*[@id=":rg:"]
    Sleep For 2 Seconds

The admin should be able to adjusts thickness settings on the news page
    [Documentation]    Verifies row thickness settings on the news page.
    Click    //*[@id=":rh:"]/li[1]
    Sleep For 2 Seconds

The admin exports the news data to CSV
    [Documentation]    Exports news data to a CSV file.
    Click    //*[@id=":rm:"]
    Click    //*[@id=":rn:"]/li[1]
    Sleep For 2 Seconds

The product should be able to added successfully
    [Arguments]    ${searchNewAdded}
    Fill Text    //input[@placeholder='Tìm kiếm sản phẩm...']    ${searchNewAdded}
    Wait For Elements State    //div[@title='Vòng tay 3 ngôi sao']    visible    timeout=2s

The news should be able to added successfully
    [Arguments]    ${searchNewAdded}
    Fill Text    //input[@placeholder='Tìm kiếm bài viết...']    ${searchNewAdded}
    Wait For Elements State    //div[@title='Flash Sale']    visible    timeout=2s