*** Settings ***

Documentation           New test suite
Library                 QWeb
Suite Setup             Open Browser     https://timesheet.nitorinfotech.net/   chrome
Suite Teardown          Close All Browsers

*** Test Cases ***

Test Case 12
             
    VerifyText          The animal friendly clothing company
    ClickText           Contact
    TypeText            Full Name           Robot Tester
    TypeText            Email Address       test@test.com
    TypeText            Message             Robots type way faster than I do...
    ClickText           Send Message
    VerifyText          Your message is sent. We'll be in touch soon.
    CloseBrowser




