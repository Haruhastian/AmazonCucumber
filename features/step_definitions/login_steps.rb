Given('User open Amazon in chrome') do
  open_website = LoginAmazon.new(@driver, @wait)
  open_website.navigate_to
end

When('User login with credentials username and password') do
  open_sign_in = LoginAmazon.new(@driver, @wait)
  open_sign_in.go_to_login
end

When('User login with authorized phone number and password') do
  open_sign_in_phone = LoginPhone.new(@driver, @wait)
  open_sign_in_phone.login_phone_number
end

Then('User succeeded login into Amazon') do
  login_verification = LoginAmazon.new(@driver, @wait)
  login_verification.login_verification
end
