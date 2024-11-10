*** Settings ***
Documentation    This Feature verifies the solution E2E scenario of website for user
Library    Browser
Library    Collections

*** Variables ***
#Argument
*** Variables ***
${url}                         http://localhost:4000
${emailAdmin}                  AdminTAA01
${passwordAdmin}               AdminTAA01

${productName}                 vòng cổ bánh bèo
${productPrice}                23000
${productDiscount}             5
${productDiscountEndday}       24/11/2024
${productAmount}               5          
${ProductTypeField}            vòng cổ    
${productDescribe}             đẹp he
${productColour}               hồng
${productSize}                 5   
${newsTitle}                   Flash Sale 11/11
${newsContent}                 Siêu sale giá sốc
${newsSubTitle1}               Hot deal vòng cổ
${newsSubTitle2}               Thời trang cực chất
${newsSubTitle3}               Combo tiết kiệm
${newsSubContent1}             Mua 1 tặng 1
${newsSubContent2}             Túi xách mẫu mới
${newsSubContent3}             Mua vòng tay giá 1đ  

*** Test Cases ***
Test case E2E for admin
    When The user goes to TAA's admin page
    And The user logs in in with admin ${emailAdmin} account and ${passwordAdmin} password
    Then The admin should be able to see account page 
    When The admin manages columns on the account page 
    Then The admin should be able to hide or show column on the account page
    When The admin applies filters on the account page
    Then The admin should see filtered rows based on columns, operators, and values on the account page
    When The admin adjusts thickness settings on the account page
    Then The admin should be able to see rows with close, standard, wide on the account page
    When The admin exports the account data to CSV
    Then The account file should be available on the local system
    When The admin navigates to order page
    Then The admin should be able to see order page
    When The admin manages columns on the order page
    Then The admin should be able to hide or show columns on the order page
    When The admin applies filters on the order page
    Then The admin should see filtered rows based on columns, operators, and values on the order page
    When The admin adjusts thickness settings on the order page
    Then The admin should see rows with close, standard, and wide on the order page
    When The admin exports the order data to CSV
    Then The order file should be available on the local system
    When The admin navigates to product page
    Then The admin should be able to see product page
    When The admin adds a new product in admin panel
    Then The product should be able to added successfully
    When The admin deletes a product in admin panel
    Then The product should be able to deleted successfully
    When The admin manages columns on the product page
    Then The admin should be able to hide or show column on the product page
    When The admin applies filters on the product page
    Then The admin should see filtered rows based on columns, operators, and values on the product page
    When The admin adjusts thickness settings on the product page
    Then The admin should be able to see rows with close, standard, wide on the product page
    When The admin exports the product data to CSV
    Then The product file should be available on the local system
    When The admin navigates to news page
    Then The admin should be able to see news page
    When The admin adds a new news in admin panel
    Then The news should be able to added successfully
    When The admin deletes a news in admin panel
    Then The news should be able to deleted successfully
    When The admin manages columns on the news page
    Then The admin should be able to hide or show column on the news page
    When The admin applies filters on the news page
    Then The admin should see filtered rows based on columns, operators, and values on the news page
    When The admin adjusts thickness settings on the news page
    Then The admin should be able to see rows with close, standard, wide on the news page
    When The admin exports the news data to CSV
    Then The news file should be available on the local system

*** Keywords ***
Sleep For 2 Seconds
    Sleep    2s

The admin goes to TAA's admin page
    [Documentation]    This keyword verifies that admin can go to admin page
    New Browser    browser=chromium    headless=False
    New Context    viewport={"width": 1500, "height":900 }
    New Page    url=${URL}
    Sleep For 2 Seconds  

The admin should be able to login into admin page with admin ${emailAdmin} account and ${passwordAdmin} password
    New Page    url=http://localhost:4000/accounts
    Fill Text    ${EmailFieldLogIn}    ${emailAdmin}
    Fill Text    ${PasswordFieldLogIn}    ${passwordAdmin}
    Sleep For 2 Seconds
    Click    ${LoginButton}
    Sleep For 2 Seconds
  
The admin should be able to see admin page
    [Arguments]    ${titleSecTionAdminText}
    Get Text    ${TitleSectionAdmin}    ==    ${titleSecTionAdminText}
    Scroll To    vertical=bottom
    Sleep For 2 Seconds

Admin manages columns on the account page
    [Documentation]    Toggles the visibility of columns on the account page.
    Click Element    ${ColumnButton}
    # Add additional steps to hide/show columns

Admin should be able to toggle column visibility on account page
    [Documentation]    Confirms column visibility changes on the account page.
    # Verification steps for column visibility

Admin applies filters on the account page
    [Arguments]    ${filter_value}
    [Documentation]    Applies filters on the account page.
    Input Text    ${FilterField}    ${filter_value}

Admin should see filtered rows on account page
    [Documentation]    Verifies filtered rows are displayed based on filters applied.
    # Verification logic for filtered rows

Admin adjusts thickness settings on the account page
    [Arguments]    ${thickness_option}
    [Documentation]    Adjusts row thickness on the account page.
    Select From Dropdown    ${ThicknessSettingsDropdown}    ${thickness_option}

Admin should see rows with close, standard, or wide on account page
    [Documentation]    Verifies row thickness settings on the account page.
    # Verification logic for thickness setting

Admin exports account data to CSV
    [Documentation]    Exports account data to a CSV file.
    Click    ${ExportButton}
    # Verification to check CSV file availability

Admin navigates to order page
    [Documentation]    Navigates to the order page.
    New Page    http://localhost:4000/order
    Sleep For 2 Seconds

Admin should see order page
    [Documentation]    Verifies the order page is displayed.
    Scroll To    vertical=bottom
    Sleep For 2 Seconds

Admin manages columns on the order page
    [Documentation]    Toggles column visibility on the order page.
    Click Element    ${ColumnButton}

Admin should be able to hide or show columns on order page
    [Documentation]    Confirms column visibility changes on the order page.
    # Verification logic for column visibility

Admin applies filters on the order page
    [Arguments]    ${filter_value}
    [Documentation]    Applies filters on the order page.
    Input Text    ${FilterField}    ${filter_value}

Admin should see filtered rows on order page
    [Documentation]    Verifies filtered rows are displayed based on filters applied on the order page.
    # Verification logic for filtered rows

Admin adjusts thickness settings on the order page
    [Arguments]    ${thickness_option}
    [Documentation]    Adjusts row thickness on the order page.
    Select From Dropdown    ${ThicknessSettingsDropdown}    ${thickness_option}

Admin should see rows with close, standard, or wide on order page
    [Documentation]    Verifies row thickness settings on the order page.
    # Verification logic for thickness setting

Admin exports order data to CSV
    [Documentation]    Exports order data to a CSV file.
    Click    ${ExportButton}
    # Verification to check CSV file availability

Admin navigates to product page
    [Documentation]    Navigates to the product page.
    New Page    http://localhost:4000/products
    Sleep For 2 Seconds

Admin should see product page
    [Documentation]    Verifies the product page is displayed.
    Scroll To    vertical=bottom
    Sleep For 2 Seconds

Admin adds a new product
    [Documentation]    Adds a new product in the admin panel.
    Click    ${AddProductButton}
    Input Text    ${ProductNameField}    Sample Product
    Click    ${ProductSaveButton}
    Click    ${AddAddressButton}
    Fill Text    ${ProductNameField}    ${productName}
    Fill Text    ${ProductPriceField}    ${productPrice}
    Fill Text    ${ProductDiscountField}    ${productDiscount}
    Fill Text    ${ProductDiscountEnddayField}    ${productDiscountEndday}
    Fill Text    ${ProductAmountField}    ${productAmount}
    Click    ${ProdcutTypeButton}
    Click    ${ProductTypeField}
    Fill Text    ${ProductDescribeField}    ${productDescribe}
    Fill Text    ${ProductColourField}    ${productColour}
    Fill Text    ${ProductSizeField}    ${productSize}
    Click    ${ProductPictureFilesField}
    Sleep For 2 Seconds

Admin should be able to add product successfully
    [Documentation]    Confirms product addition.
    # Verification steps for product addition
    Click    ${SaveButton}
    Sleep For 2 Seconds

Admin deletes a product
    [Documentation]    Deletes a product in the admin panel.
    Click    ${ProductDeleteButton}
    Confirm Action

Admin should be able to delete product successfully
    [Documentation]    Confirms product deletion.
    # Verification steps for product deletion

Admin manages columns on the product page
    [Documentation]    Toggles column visibility on the product page.
    Click Element    ${ColumnButton}

Admin applies filters on the product page
    [Arguments]    ${filter_value}
    [Documentation]    Applies filters on the product page.
    Input Text    ${FilterField}    ${filter_value}

Admin should see filtered rows on product page
    [Documentation]    Verifies filtered rows are displayed on the product page.
    # Verification logic for filtered rows

Admin adjusts thickness settings on the product page
    [Arguments]    ${thickness_option}
    [Documentation]    Adjusts row thickness on the product page.
    Select From Dropdown    ${ThicknessSettingsDropdown}    ${thickness_option}

Admin exports product data to CSV
    [Documentation]    Exports product data to a CSV file.
    Click    ${ExportButton}
    # Verification to check CSV file availability

Admin navigates to news page
    [Documentation]    Navigates to the news page.
    New Page    http://localhost:4000/news
    Sleep For 2 Seconds

Admin should see news page
    [Documentation]    Verifies the news page is displayed.
    Scroll To    vertical=bottom
    Sleep For 2 Seconds

Admin adds a new news item
    [Documentation]    Adds a new news item in the admin panel.
    Click    ${AddNewsButton}
    Input Text    ${NewsTitleField}   ${newsTitle}
    Input Text    ${NewsContentField}   ${newsContent}
    Input Text    ${NewsSubTitle1Field}   ${newsSubTitle1}
    Input Text    ${NewsSubTitle2Field}   ${newsSubTitle2}
    Input Text    ${NewsSubTitle3Field}   ${newsSubTitle3}
    Input Text    ${NewsSubContent1Field}   ${newsSubContent1}
    Input Text    ${NewsSubContent2Field}   ${newsSubContent2}
    Input Text    ${NewsSubContent3Field}   ${newsSubContent3}
    Click    ${NewsPictureFilesField}
    Click    ${SaveButton}

Admin should be able to add news successfully
    [Documentation]    Confirms news addition.
    # Verification steps for news addition

Admin deletes a news item
    [Documentation]    Deletes a news item in the admin panel.
    Click    ${NewsDeleteButton}
    Confirm Action

Admin should be able to delete news successfully
    [Documentation]    Confirms news deletion.
    # Verification steps for news deletion

Admin manages columns on the news page
    [Documentation]    Toggles column visibility on the news page.
    Click Element    ${ColumnToggle}

Admin applies filters on the news page
    [Arguments]    ${filter_value}
    [Documentation]    Applies filters on the news page.
    Input Text    ${FilterField}    ${filter_value}

Admin should see filtered rows on news page
    [Documentation]    Verifies filtered rows are displayed on the news page.
    # Verification logic for filtered rows

Admin adjusts thickness settings on the news page
    [Arguments]    ${thickness_option}
    [Documentation]    Adjusts row thickness on the news page.
    Select From Dropdown    ${ThicknessSettingsDropdown}    ${thickness_option}

Admin exports news data to CSV
    [Documentation]    Exports news data to a CSV file.
    Click    ${ExportButton}
    # Verification to check CSV file availability
