Feature: Admin can update committees
  
  Scenario: Updating committees
    Given I am on the SEC home page
    And I fill in "email" with "administrator@administrator.com"
    And I fill in "password" with "administrator"
    And I click "Log In"
    Then I should be on the Admin Menu
    When I click "Manage Committees"
    When I click "Add new committee"
    And I fill in "committee_name" with "Test1"
    And I fill in "committee_description" with "Test2"
    And I click "Create Committee"
    Then I should be on the Committee's Page
    And I should see "Test1"
    
    
  Scenario: Deleting committees
    Given I am on the SEC home page
    And I fill in "email" with "administrator@administrator.com"
    And I fill in "password" with "administrator"
    And I click "Log In"
    Then I should be on the Admin Menu
    When I click "Manage Committees"
    When I click "delete_Test1"
    And I click "Delete Committee"
    Then I should be on the Committee's Page
    And I shouldn't see "Test1"