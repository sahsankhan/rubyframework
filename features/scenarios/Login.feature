Feature: Email and Phone Number Validation

    Scenario: I want to login to Lineup app
      Given I am on login page
      When I enter email address
      And I click on Sign in button
      Then I should see 'Enter the 4-digit verification code'
      When I enter 4 digit verification code
      And I click on submit button
      Then I should see 'Welcome, Louis Lineup'

  Scenario: I should see error message when using wrong email
    Given I am on login page
    When I enter email address 'xyz.com'
    And I click on Sign in button
    Then I should see 'Invalid Email or Phone Number'

   Scenario: I should see error message when using wrong verification code
  Given I am on login page
  When I enter email address 'szubair.alam@toptal.com'
  And I click on Sign in button
  When I enter wrong 4 digit verification code
  And I click on submit button
  Then I should see 'Something went wrong' error message

