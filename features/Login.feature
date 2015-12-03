Feature: Android Login Feature using poo

  @scenario1
  Scenario: Invalid login
    Given I am about to login
    When I enter invalid credentials
    Then I should see error message

  @scenario2
  Scenario: Valid login
    Given I am about to login
    When I enter valid credentials
    Then I should not see error message


  @scenario3
  Scenario: Valid login scenario 3
    Given I am about to login
    