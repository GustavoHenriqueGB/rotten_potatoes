Feature: BDD Exercises on Rotten Potatoes

  # -------------------------------------------------------------------
  # 1. Sad Path: User can add movie by searching TMDb
  # -------------------------------------------------------------------
  Background: Start from the Search form on the home page
    Given I am on the Rotten Potatoes home page
    Then I should see "Search TMDb for a movie"

  Scenario: Try to add nonexistent movie (sad path)
    When I fill in "Search Terms" with "Movie That Does Not Exist"
    And I press "Search TMDb"
    Then I should be on the Rotten Potatoes home page
    And I should see "'Movie That Does Not Exist' was not found in TMDb."

  # -------------------------------------------------------------------
  # 2. View movie list after adding 2 movies (Imperative Scenario)
  # -------------------------------------------------------------------
  Scenario: View movie list after adding 2 movies and order alphabetically (Imperative)
    Given I am on the Rotten Potatoes home page
    When I follow "Add new movie"
    Then I should be on the Create New Movie page
    When I fill in "Title" with "Zorro"
    And I select "PG" from "Rating"
    And I press "Save Changes"
    Then I should be on the Rotten Potatoes home page
    When I follow "Add new movie"
    Then I should be on the Create New Movie page
    When I fill in "Title" with "Apocalypse Now"
    And I select "R" from "Rating"
    And I press "Save Changes"
    Then I should be on the Rotten Potatoes home page
    When I follow "Movie Title"
    Then I should see "Apocalypse Now" before "Zorro"

  # -------------------------------------------------------------------
  # 3. View movie list after adding 2 movies (Declarative Scenario)
  # -------------------------------------------------------------------
  Scenario: View movie list after adding 2 movies and order alphabetically (Declarative)
    Given the following movies exist:
      | title          | rating | release_date |
      | Zorro          | PG     | 1975-03-06   |
      | Apocalypse Now | R      | 1979-08-15   |
    And I am on the Rotten Potatoes home page
    When I follow "Movie Title"
    Then I should see "Apocalypse Now" before "Zorro"