When('User go to the Sign Up page') do
  goto = SignUpAmazon.new(@driver, @wait)
  goto.go_to_signup
end

When('Fill all the required field with valid new e-mail input') do
  fill = SignUpAmazon.new(@driver, @wait)
  fill.filling_field(false)
end

# When('Enter OTP code that has been sent to user') do
#   pending # Write code here that turns the phrase above into concrete actions
# end

When('Fill all the required field with valid verified e-mail input') do
  fill = SignUpAmazon.new(@driver, @wait)
  fill.verified_email_input(false)
  fill.create_already
  fill.verified_email_input(false)
end


Then('User has succeeded in creating an account.') do
  pending # Write code here that turns the phrase above into concrete actions
end

