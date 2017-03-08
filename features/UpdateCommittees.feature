Feature: Admin can update committees
  
  Scenario: Updating committees
    Given I am on the SEC home page
    And I am an admin
    When I press "Update Committees"
    And I fill in "Committee name" with "TestName"
    And I fill in "Committee content" with "TestContent"
    And I press "Save Commitee"
    Then I should be on the SEC home page
    And I should see "TestName"
    And Commitee "TestName" should have "TestContent"