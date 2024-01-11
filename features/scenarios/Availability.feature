Feature: Availability Tab on mobile app

  Scenario: I want to view the time off pending request
    Given I am on login page
    When I enter email address
    And I click on Sign in button
    Then I should see 'Enter the 4-digit verification code'
    When I enter 4 digit verification code
    And I click on submit button
    Then I should see 'Welcome, Louis Lineup'
    When I click on availability tab
    And I click on TIME OFF tab
    And I click on pending Time Off Request
    Then  I should see 'Time off Request' heading

#    Scenario: I want to make changes to time off pending request
#    Given I am on login page
#    When I enter email address
#    And I click on Sign in button
#    Then I should see 'Enter the 4-digit verification code'
#    When I enter 4 digit verification code
#    And I click on submit button
#    Then I should see 'Welcome, Louis Lineup'
#    When I click on availability tab
#    And I click on TIME OFF tab
#    And I click on pending Time Off Request
#    Then I should see 'Time off Request' heading
#    When I click on 'Make Changes' button
#    Then I should see 'Time off Request' heading
#    And I switch off the 'All-day' toggle
#    And I click on 'Submit for Approval' button



  Scenario: I want to cancel the time off pending request
    Given I am on login page
    When I enter email address
    And I click on Sign in button
    Then I should see 'Enter the 4-digit verification code'
    When I enter 4 digit verification code
    And I click on submit button
    Then I should see 'Welcome, Louis Lineup'
    When I click on availability tab
    And I click on TIME OFF tab
    And I click on pending Time Off Request
    Then I should see 'Time off Request' heading
    When I click on 'Cancel Request' button
    Then I should see 'Cancel Time off Request' heading
    When I click on 'Cancel Request' button
    Then I should see 'Success your request has been canceled' message