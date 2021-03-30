*** Settings ***

Documentation           New test suite
Library                 QWeb
Suite Setup             Open Browser  https://qentinelqi.github.io/shop/     chrome
Suite Teardown          Close All Browsers

*** Test Cases ***

Use case 1
 GoTo              https://qentinelqi.github.io/shop
    VerifyText          The animal friendly clothing company
    ClickText           Scar the Lion
    ClickText           Add to cart
    VerifyText          Cart summary
    DropDown            Size            Large
    ClickItem           Increment quantity
    ClickItem           Remove item
    VerifyText          Your cart is empty
    ClickText           Continue shopping   
   
Use case 2
VerifyText          The animal friendly clothing company
    ClickText           Contact
    TypeText            Full Name           Robot Tester
    TypeText            Email Address       test@test.com
    TypeText            Message             Robots type way faster than I do...
    ClickText           Send Message
    VerifyText          Your message is sent. We'll be in touch soon.
    CloseBrowser
