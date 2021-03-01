Feature: Web search script

  Background:
    Given the user navigates to google
    And the user clicks on search field

  @positive @p0
  Scenario: search for ducks
    Given the user enters the "ducks" to search
    When the user clicks on the search
    Then the user can able to verify the search pages are loaded
