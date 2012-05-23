# features/strawberries.feature
Feature: Live
  In order to live
  people
  want to be able to eat strawberries
 
  Scenario: Eating strawberries
    Given a strawberry that is "blue"
    When I go to the homepage
    Then I should see "There is 1 strawberry"
    When I follow "eat the blue strawberry"
    Then I should see "Strawberry eaten!"
