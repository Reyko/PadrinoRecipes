Feature: List Chefs
 
  Scenario: A visitor sees a list of chefs
    Given there are some chefs
    And we are on the homepage
    When we follow "chefs"
    Then we should see some chefs