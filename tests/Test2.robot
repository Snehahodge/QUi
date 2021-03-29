*** Settings ***

Documentation           New test suite
Library                 QWeb
Suite Setup             Open Browser  https://qentinelqi.github.io/shop/     chrome
Suite Teardown          Close All Browsers

*** Test Cases ***

Test Case 12
    VerifyText          The animal friendly clothing company
    ClickText           Scar the Lion
    ClickText           Add to cart
    VerifyText          Cart summary
    DropDown            Size            Large
    ClickItem           Increment quantity
    ClickItem           Remove item
    VerifyText          Your cart is empty
    ClickText           Continue shopping   
   



