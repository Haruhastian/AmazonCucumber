Feature: Sign Up into Amazon

  @signup_one
  Scenario: Verifying that users can Sign Up to Amazon using new e-mail
    Given User open Amazon in chrome
    When User go to the Sign Up page
    And Fill all the required field with valid new e-mail input
    Then User has succeeded in creating an account.

    @signup_two
    Scenario: Verifying that users can Sign up to Amazon using verified e-mail
      Given User open Amazon in chrome
      When User go to the Sign Up page
      And Fill all the required field with valid verified e-mail input
      Then User has succeeded in creating an account.