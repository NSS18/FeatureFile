Feature: user should be able to log in on www.bmail.com with valid credentials and welcome message should display
  valid username is JamesBond and valid Password is Jbond007

  Scenario: user should be able to log in with valid credentials
    Given user is already on wwww.bmail.com log in page
    When user types valid Username 'JamesBond'
    And user types valid Password 'Jbond007'
    And user click on login button
    Then user should be logged in successfully
    And welcome message should be displayed


  Scenario: user should not be able to log in with invalid username and valid password
    Given user is already on www.bmail.com log in page
    When user types invalid Username 'jamesbond'
    And user types valid Password 'Jbond007'
    And user click on login button
    Then user should NOT be able to login
    And Error message should display

  Scenario: user should not be able to log in with valid username and invalid password
    Given user is already on www.bmail.com log in page
    When user types valid Username 'Jamesbond'
    And user types invalid Password 'jbond007'
    And user click on login button
    Then user should NOT be able to login
    And Error message should display

  Scenario: user should not be able to log in with empty username field and valid password
    Given user is already on www.bmail.com log in page
    When user do not type anything in Username field
    And user types valid Password 'Jbond007'
    And user click on login button
    Then user should NOT be able to login
    And Error message should display

  Scenario Outline: user should not be able to log in with valid username and empty password field
    Given user is already on www.bmail.com log in page
    When user types valid Username 'Jamesbond'
    And user do not types anything in Password field
    And user click on login button
    Then user should NOT be able to login
    And Error message should display


  Scenario: user should not be able to log in with invalid username and empty password field
    Given user is already on www.bmail.com log in page
    When user types invalid Username 'jamesbond'
    And user do not types anything in Password field
    And user click on login button
    Then user should NOT be able to login
    And Error message should display

  Scenario: user should not be able to log in with empty username field and invalid password
    Given user is already on www.bmail.com log in page
    When user do not type anything in Username field
    And user types invalid Password 'Jbond007'
    And user click on login button
    Then user should NOT be able to login
    And Error message should display

  Scenario: user should not be able to log in with empty username field and empty password field
    Given user is already on www.bmail.com log in page
    When user do not type anything in Username field
    And user do not type anything in Password field
    And user click on login button
    Then user should NOT be able to login
    And Error message should display