Feature: SauceDemo

  Scenario: User logs in and sorts products
    Given the user accesses "https://www.saucedemo.com/"
    When the user sees the login page
    And enters a valid username
    And enters a valid password
    And clicks on the login button
    Then the user should be able to see the inventory page
    Then user should be able to click on sort dropdown
    Then user should be able to select sort name A-Z
    And user should be able to see the alphabetical order
    Then user should be able to click on sort dropdown
    Then user should be able to select sort name Z-A
    And user should be able to see the revers alphabetical order
    Then user should be able to click on sort dropdown
    Then user should be able to select sort price low-high
    And user should be able to see the lower price first
    Then user should be able to click on sort dropdown
    Then user should be able to select sort price high-low
    And user should be able to see the higher price first

Scenario: Verify user should be able to checkout an item
    Given the user accesses "https://www.saucedemo.com/"
    When the user sees the login page
    And enters a valid username
    And enters a valid password
    And clicks on the login button
    Then the user should be able to see the inventory page
    And should be able to view an item on the inventory page
    And should see the Add to Cart button within the section
    When the user clicks on the Add to Cart button
    Then the item should be successfully added to the cart
    When the user clicks on the Cart icon
    Then the user should be able to see the cart page
    When the user clicks on the Checkout button
    Then the user should be able to see the Your Information page
    When the user enters their First Name, Last Name, and Zipcode
    And clicks on the Continue button
    Then the user should be able to see the Overview page
    When the user clicks on the Finish button
    Then the user should be able to see the Order Completion page