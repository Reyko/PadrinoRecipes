Feature: Add A Recipe


  Scenario: A visitor adds a recipe without providing a title
    Given that we are on the homepage
      And we choose to add a recipe
    When I complete the form without a title valid information
    Then a recipe should be created


  Scenario: A visitor adds a recipe without providing a title
    Given that I am on the homepage
      And I choose to add a recipe
    When I complete the form without a title
    Then a recipe should not be created
      And I should see an error recipe