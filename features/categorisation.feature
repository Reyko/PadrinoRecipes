Feature: Categorisation 
  
  Background:
    Given there is recipe categorised as "Vegetarian"
    And there is recipe categorised as "Gluten Free"



  Scenario: A visitor sees all the recipes with a particular dietary requirement
    Given I am on the homepage
    When I select "Vegetarian Recipes" from the category list
    Then I will see a list of vegetarian recipes