Feature: Product Feature

  Background:
    Given I open the "https://www.saucedemo.com/" page

  Scenario Outline: Validate product sort by price <sort>
    Then I will login as 'standard_user'
    When Sort the items by <sort>
    Then Validate all 6 items are sorted correctly by price <sort>
  
  Examples:
    | sort                  |
    | "Price (low to high)" |
    | "Price (high to low)" |