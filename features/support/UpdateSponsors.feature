Feature: Admin can update sponsors
  
  Scenario: Updating sponsors
    Given I am on the SEC home page
    And I fill in "email" with "administrator@administrator.com"
    And I fill in "password" with "administrator"
    And I click "Log In"
    Then I should be on the Admin Menu
    When I click "Manage Sponsors"
    When I click "Add new sponsor"
    And I fill in "sponsor_name" with "Test1"
    And I fill in "sponsor_description" with "Test2"
    And I fill in "sponsor_spn_type" with "Test3"
    And I fill in "sponsor_link_to_sec" with "Test4"
    And I fill in "sponsor_link_to_sponsor" with "Test5"
    And I click "Create Sponsor"
    Then I should be on the Sponsor's Page
    And I should see "Test1"
    And I should see "Test2"
    And I should see "Test3"
    And I should see "Test4"
    And I should see "Test5"
    
    
  Scenario: Deleting sponsors
    Given I am on the SEC home page
    And I fill in "email" with "administrator@administrator.com"
    And I fill in "password" with "administrator"
    And I click "Log In"
    Then I should be on the Admin Menu
    When I click "Manage Sponsors"
    When I click "delete_Test1"
    And I click "Delete Sponsor"
    Then I should be on the Sponsor's Page
    And I shouldn't see "Test1"
    And I shouldn't see "Test2"
    And I shouldn't see "Test3"
    And I shouldn't see "Test4"
    And I shouldn't see "Test5"