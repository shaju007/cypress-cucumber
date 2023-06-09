Feature: Board functionality

  Rule: Happy paths

  Background: Empty board page
    Given I am on empty home page

  @smoke
  Scenario: Opening a board
    When I type in "new board" and submit
    Then I should be redirected to the board detail

  Scenario: Creating a <listName> list within a board
    When I type in "<boardName>" and submit
    And Create a list with the name "<listName>"
    Then I should be redirected to the board detail

  Examples:
    | boardName | listName |
    | Shopping list | Groceries |
    | Rocket launch | Preflight checks |
