Feature: Logout from Mobile App

    Scenario: I want to logout from Lineup app
      Given I am on login page
      When I enter email address
      And I click on Sign in button
      Then I should see 'Enter the 4-digit verification code'
      When I enter 4 digit verification code
      And I click on submit button
      Then I should see 'Welcome, Louis Lineup'
      When I click on settings tab
      Then I should see 'Settings' Heading
      When I click on Sign out button
      Then I should see Login Page