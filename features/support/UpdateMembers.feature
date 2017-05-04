Feature: Admin can update members
  
  Scenario: Updating members
    Given I am on the SEC home page
    And I fill in "email" with "administrator@administrator.com"
    And I fill in "password" with "administrator"
    And I click "Log In"
    Then I should be on the Admin Menu
    When I click "Manage Members"
    When I click "Add new member"
    And I fill in "member_name" with "Test1"
    And I fill in "member_email" with "Test2@gmail.com"
    And I fill in "member_password" with "Test3"
    And I fill in "member_major" with "Test4"
    And I fill in "member_grad_year" with "3737"
    And I fill in "member_member_since" with "3736"
    And I fill in "member_hometown" with "Test5"
    And I click "Create Member"
    Then I should be on the Member's Page
    And I should see "Test1"
    And I should see "Test2@gmail.com"
    And I should see "Test4"
    And I should see "3737"
    And I should see "3736"
    And I should see "Test5"
    
    
  Scenario: Deleting members
    Given I am on the SEC home page
    And I fill in "email" with "administrator@administrator.com"
    And I fill in "password" with "administrator"
    And I click "Log In"
    Then I should be on the Admin Menu
    When I click "Manage Members"
    When I click "delete_Test1"
    And I click "Delete Member"
    Then I should be on the Member's Page
    And I shouldn't see "Test1"
    And I shouldn't see "Test2@gmail.com"
    And I shouldn't see "Test3"
    And I shouldn't see "Test4"
    And I shouldn't see "3737"
    And I shouldn't see "3736"
    And I shouldn't see "Test5"