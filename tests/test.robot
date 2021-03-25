*** Settings ***

Documentation           New test suite
Library                 QWeb
Suite Setup             Open Browser     https://timesheet.nitorinfotech.net/   chrome
Suite Teardown          Close All Browsers

*** Test Cases ***

Test Case 12
             
    ClickText         Sign in
    TypeText          username       sneha.hodge
    TypeSecret        password       @arnav@06
    DropDown  Jump to a project... anchor=2
    ClickText         CGT ISAAC Testing timeout=2 
    ClickText         +
    ClickText         Log time
    TypeText          time_entry[hours]                 9
    DropDown          Issue                             Task
    ClickText         Activity *
    ClickText         Create
    ClickText         Spent time
    ClickText         Sign out




