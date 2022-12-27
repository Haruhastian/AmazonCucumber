class LoginPhone

  def initialize(driver, wait)
    @driver = driver
    @wait = wait
  end

  def login_phone_number
    login_hover = @driver.find_element(:id, 'nav-link-accountList')
    @driver.action.move_to(login_hover).perform
    login_amazon = @driver.find_element(:link_text, 'Sign in')
    login_amazon.click

    #Verifikasi element untuk memasukkan email
    @wait.until do
      @driver.find_element(:id, 'createAccountSubmit')
    end

    username_input = @driver.find_element(:id, 'ap_email')
    username_input.send_keys("6281273648519")
    @driver.find_element(:id, 'continue').click

    #Verifikasi element untuk memasukkan password
    @wait.until do
      @driver.find_element(:id, 'auth-fpp-link-bottom')
    end

    password_input = @driver.find_element(:id, 'ap_password')
    password_input.send_keys("zacques17")
    @driver.find_element(:id, 'auth-signin-button').click

    #Delay the captcha for 15s.
    sleep(15)

    if @wait.until do
      login_hover
    end
      puts "You have successfully enter the main page."
    end

  end
end