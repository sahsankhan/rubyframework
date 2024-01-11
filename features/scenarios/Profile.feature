Feature: Profile Settings

    Scenario: I want to change app preferred language to Spanish
      Given I am on login page
      When I enter email address
      And I click on Sign in button
      Then I should see 'Enter the 4-digit verification code'
      When I enter 4 digit verification code
      And I click on submit button
      Then I should see 'Welcome, Louis Lineup'
      When I click on settings tab
      Then I should see 'Settings' Heading
      When I click on Profile tab
      Then I should see 'Profile' Heading
      When I click on Language dropdown icon
      And I select Spanish language
      Then I should see language changed to Spanish

  Scenario: I want to change app preferred language to English
    Given I am on login page
    When I enter email address
    And I click on Sign in button
    Then I should see 'Enter the 4-digit verification code'
    When I enter 4 digit verification code
    And I click on submit button
    Then I should see 'Bienvenido, Louis Lineup'
    When I click on Ajustes tab
    Then I should see 'Ajustes' Heading
    When I click on Perfil tab
    Then I should see 'Perfil' Heading
    When I click on Language dropdown icon
    And I select 'Inglés' language
    Then I should see language changed to English

