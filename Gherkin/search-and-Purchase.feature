Feature: Searching for and purchasing a product in an online store

  Background:
    Given a user is logged in to their favorite online store

  Scenario: Searching for a product
    Given the user is on the store's homepage
    When the user enters the product name into the search bar
    And the user clicks the search button
    Then the user is redirected to the search results page with a list of products

  Scenario: Selecting a product to purchase
    Given the user is on the search results page
    When the user browses through the list of products
    And the user clicks on the chosen product
    Then the user is redirected to the product information page

  Scenario: Adding a product to the cart
    Given the user is on the product information page
    When the user selects the quantity and type of the product
    And the user clicks the "Add to Cart" button or the cart icon next to the product
    Then the product is added to the cart

  Scenario: Completing the purchase 
    Given the user is on the store's homepage
    When the user clicks on the "Check your Cart" button or the cart icon
    And the user selects the option "Proceed to Checkout"
    Then the user is redirected to the payment page

  Scenario: Validating the purchase
    Given the user is redirected to the payment page
    When the user enters correct payment information
    And the user confirms the purchase
    Then the user receives a purchase confirmation