Feature: Login into Amazon

  @ones
    Scenario: Verifying user can login into the website using email
      Given User open Amazon in chrome
      When User login with credentials username and password
      Then User succeeded login into Amazon

  @twos
    Scenario: Verifying user can login into the website using phone number
      Given User open Amazon in chrome
      When User login with authorized phone number and password
      Then User succeeded login into Amazon
    
