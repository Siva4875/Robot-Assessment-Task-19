*** Settings ***
# Describes the purpose of this test suite
Documentation     Test to verify login functionality.
# Import SeleniumLibrary for browser automation
Library    SeleniumLibrary
# Import custom reusable keywords from the specified file
Resource          ../keywords/login_keywords.robot

*** Test Cases ***
# Test Case: Verify Login Functionality
# This test performs login using valid credentials and then logs out
Verify Login Functionality
    Open Browser To Login Page          # Launch browser and navigate to login page
    Input Credentials And Submit        # Enter username and password, then click login
    Verify Successful Login             # Assert that login was successful by checking an element
    Logout From Application             # Log out and close the browser
