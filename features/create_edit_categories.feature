Feature: Create and edit categories
  As a blog administrator
  In order to share my thoughts with the world
  I want to be able to add categories to my blog and edit categories

   Background:
    Given the blog is set up
    And I am logged into the admin panel

   Scenario: Successfully create and edit categories
    Given I am on the new categories page
    When I fill in "category_name" with "Categ"
    And I fill in "category_keywords" with "key"
    And I fill in "category_permalink" with "LI"
    And I fill in "category_description" with "des"
    And I press "Save"
    Then I should see "Categ"
    Then I should see "key"
    Then I should see "LI"
    Then I should see "des"

     Then I follow "Categ"
    When I fill in "category_name" with "Categ2"
    And I fill in "category_keywords" with "key2"
    And I fill in "category_permalink" with "LI2"
    And I fill in "category_description" with "des2"
    And I press "Save"
    Then I should see "Categ2"
    Then I should see "key2"
    Then I should see "LI2"
    Then I should see "des2"