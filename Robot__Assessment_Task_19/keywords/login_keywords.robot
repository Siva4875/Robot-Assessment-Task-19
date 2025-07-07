*** Settings ***
# Importing SeleniumLibrary for browser automation
Library    SeleniumLibrary
# Importing variables like URL, USERNAME, PASSWORD, BROWSER
Resource    ../resources/variables.robot

*** Keywords ***

# Keyword to open the browser and navigate to the login page
Open Browser To Login Page
    Open Browser    ${URL}    ${BROWSER}                                 # Open the browser with specified URL and browser
    Maximize Browser Window                                              # Maximize the browser window for better visibility
    Wait Until Page Contains Element    xpath=//input[@id="username"]    # Wait until the username field is visible

Input Credentials And Submit
    Input Text    id=username    ${USERNAME}          # Enter username
    Input Text    id=password    ${PASSWORD}          # Enter password
    Click Button    xpath=//button[@type='submit']    # Click the login button

Verify Successful Login
    Wait Until Element Is Visible    id=firstname     # Wait for an element that appears only after successful login

Logout From Application
    Click Button    id=logout                         # Click the logout button
    Close Browser                                     # Close the browser after logout
