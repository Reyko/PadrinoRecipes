
Feature: Display a Particular Recipe 
  In order to make sure that the recipe is being displayed
  As I m not sure that I have created the route
  I want the recipe's page to be displayed
@wip
Scenario: Click on a recipe and go to its page
  Given that I have a link to the recipe
  And I am on the Recipes page
  When I follow a particular recipe
  Then the recipe page should be loaded on screen