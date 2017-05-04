Feature: Admin can update events
  
  Scenario: Updating events
    Given I am on the SEC home page
    And I fill in "email" with "administrator@administrator.com"
    And I fill in "password" with "administrator"
    And I click "Log In"
    Then I should be on the Admin Menu
    When I click "Manage Events"
    Then I should be on the Event's Page
    When I click "Add new event"
    And I fill in "event_name" with "Test2"
    And I fill in "event_link_to_event" with "Test3"
    And I click "Create Event"
    Then I should be on the Event's Page
    And I should see "Test2"
    And I should see "Test3"
    
  Scenario: Deleting event
    Given I am on the SEC home page
    And I fill in "email" with "administrator@administrator.com"
    And I fill in "password" with "administrator"
    And I click "Log In"
    Then I should be on the Admin Menu
    When I click "Manage Events"
    When I click "delete_Test2"
    And I click "Delete event"
    Then I should be on the Event's Page
    And I shouldn't see "Test2"
    And I shouldn't see "Test3"