{\rtf1\ansi\ansicpg1252\cocoartf2761
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 Feature: Login and Checkout functionality\
  As a user I want to be able to log in, view items, and checkout\
\
  Scenario: Verify user should be able to login using valid account\
    Given the user accesses "https://www.saucedemo.com/"\
    When the user sees the login page\
    And enters a valid username\
    And enters a valid password\
    And clicks on the login button\
    Then the user should be able to see the inventory page\
\
  Scenario: Verify user should not be able to login using invalid username\
    Given the user accesses "https://www.saucedemo.com/"\
    When the user sees the login page\
    And enters an invalid username\
    And enters a valid password\
    And clicks on the login button\
    Then an error message should be displayed saying "Username and password do not match"\
\
  Scenario: Verify user should not be able to login using invalid password\
    Given the user accesses "https://www.saucedemo.com/"\
    When the user sees the login page\
    And enters a valid username\
    And enters an invalid password\
    And clicks on the login button\
    Then an error message should be displayed saying "Username and password do not match"\
\
  Scenario: Verify user should not be able to login using locked account\
    Given the user accesses "https://www.saucedemo.com/"\
    When the user sees the login page\
    And enters a locked username\
    And enters a valid password\
    And clicks on the login button\
    Then an error message should be displayed saying "User has been locked out."\
\
  Scenario: Verify user should be able to login using valid account in no more than 3 seconds\
    Given the user accesses "https://www.saucedemo.com/"\
    When the user sees the login page\
    And enters a valid username\
    And enters a valid password\
    And clicks on the login button\
    Then the user should be successfully logged in within 3 seconds\
\
  Scenario: Verify user should be able to see the image match with the item\
    Given the user accesses "https://www.saucedemo.com/"\
    When the user sees the login page\
    And enters a valid username\
    And enters a valid password\
    And clicks on the login button\
    Then the user should be able to see the inventory page\
    And should be able to view an item on the inventory page\
    And the image displayed should match the corresponding item\
\
  Scenario: Verify user should be able to see hamburger menu on the top left corner of the page\
    Given the user accesses "https://www.saucedemo.com/"\
    When the user sees the login page\
    And enters a valid username\
    And enters a valid password\
    And clicks on the login button\
    Then the user should be able to see the inventory page\
    And should see the hamburger menu icon on the top left corner of the page\
\
  Scenario: Verify user should be able to see cart icon on the top right corner of the page\
    Given the user accesses "https://www.saucedemo.com/"\
    When the user sees the login page\
    And enters a valid username\
    And enters a valid password\
    And clicks on the login button\
    Then the user should be able to see the inventory page\
    And should see the cart icon on the top right corner of the page\
\
  Scenario: Verify user should be able to see the item name within the section\
    Given the user accesses "https://www.saucedemo.com/"\
    When the user sees the login page\
    And enters a valid username\
    And enters a valid password\
    And clicks on the login button\
    Then the user should be able to see the inventory page\
    And should be able to view an item on the inventory page\
    And the item name should be displayed within its respective section\
\
  Scenario: Verify user should be able to see the item description within the section\
    Given the user accesses "https://www.saucedemo.com/"\
    When the user sees the login page\
    And enters a valid username\
    And enters a valid password\
    And clicks on the login button\
    Then the user should be able to see the inventory page\
    And should be able to view an item on the inventory page\
    And the item description should be displayed within its respective section\
\
  Scenario: Verify user should be able to see the item price within the section\
    Given the user accesses "https://www.saucedemo.com/"\
    When the user sees the login page\
    And enters a valid username\
    And enters a valid password\
    And clicks on the login button\
    Then the user should be able to see the inventory page\
    And should be able to view an item on the inventory page\
    And the item price should be displayed within its respective section\
\
  Scenario: Verify user should be able to see Add to Cart button within the section\
    Given the user accesses "https://www.saucedemo.com/"\
    When the user sees the login page\
    And enters a valid username\
    And enters a valid password\
    And clicks on the login button\
    Then the user should be able to see the inventory page\
    And should be able to view an item on the inventory page\
    And the "Add to Cart" button should be displayed within its respective section\
\
  Scenario: Verify user should be able to add an item to the cart\
    Given the user accesses "https://www.saucedemo.com/"\
    When the user sees the login page\
    And enters a valid username\
    And enters a valid password\
    And clicks on the login button\
    Then the user should be able to see the inventory page\
    And should be able to view an item on the inventory page\
    And should see the "Add to Cart" button within the section\
    When the user clicks on the "Add to Cart" button\
    Then the item should be successfully added to the cart\
\
  Scenario: Verify user should be able to checkout an item\
    Given the user accesses "https://www.saucedemo.com/"\
    When the user sees the login page\
    And enters a valid username\
    And enters a valid password\
    And clicks on the login button\
    Then the user should be able to see the inventory page\
    And should be able to view an item on the inventory page\
    And should see the "Add to Cart" button within the section\
    When the user clicks on the "Add to Cart" button\
    Then the item should be successfully added to the cart\
    When the user clicks on the Cart icon\
    Then the user should be able to see the cart page\
    When the user clicks on the Checkout button\
    Then the user should be able to see the Your Information page\
    When the user enters their First Name, Last Name, and Zipcode\
    And clicks on the Continue button\
    Then the user should be able to see the Overview page\
    When the user clicks on the Finish button\
    Then the user should be able to see the Order Completion page\
\
  Scenario: Verify user should not be able to checkout an item if an error occurs\
    Given the user accesses "https://www.saucedemo.com/"\
    When the user sees the login page\
    And enters a valid username\
    And enters a valid password\
    And clicks on the login button\
    Then the user should be able to see the inventory page\
    And should be able to view an item on the inventory page\
    And should see the "Add to Cart" button within the section\
    When the user clicks on the "Add to Cart" button\
    Then the item should be successfully added to the cart\
    When the user clicks on the Cart icon\
    Then the user should be able to see the cart page\
    When the user clicks on the Checkout button\
    Then the user should be able to see the Your Information page\
    When the user enters their First Name, Last Name, and Zipcode\
    And clicks on the Continue button\
    Then the user should be able to see the Overview page\
    When the user clicks on the Finish button\
    Then if an error occurs, the user should not be able to complete the checkout process\
    And an appropriate error message should be displayed\
}