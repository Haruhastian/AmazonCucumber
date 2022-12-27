# require 'pry'

class LoginAmazon

  def initialize(driver, wait)
    @driver = driver
    @wait = wait
  end

  def navigate_to
    @driver.get 'https://www.amazon.com/'
    @wait.until do
      @driver.find_element(:id, 'nav-logo')
    end

    if @driver.title == "Amazon.com. Spend less. Smile more."
      puts "Validated page."
    else
      puts "Invalidated page."
    end
  end

  def go_to_login
    login_hover = @driver.find_element(:id, 'nav-link-accountList')
    @driver.action.move_to(login_hover).perform
    login_amazon = @driver.find_element(:link_text, 'Sign in')
    login_amazon.click

    #Verificates the element for email input
    @wait.until do
      @driver.find_element(:id, 'createAccountSubmit')
    end

    username_input = @driver.find_element(:id, 'ap_email')
    username_input.send_keys("hzbchh@gmail.com")
    @driver.find_element(:id, 'continue').click

    #Verificates the element for password input
    @wait.until do
      @driver.find_element(:id, 'auth-fpp-link-bottom')
    end

    password_input = @driver.find_element(:id, 'ap_password')
    password_input.send_keys("zacques17")
    @driver.find_element(:id, 'auth-signin-button').click

    #Delay the captcha for 15s.
    sleep(15)

    # important_message = @driver.find_element(:id, 'auth-warning-message-box')
    # ap_password = @driver.find_element(:id, 'ap_password')
    # if @driver.find_element(:id, 'auth-warning-message-box').displayed?
    #   puts "Captcha displayed on screen."
    #   @driver.find_element(:id, 'ap_password').send_keys("zacques17")
    #   puts "Password can be filled."
    # end

    if @wait.until do
      @driver.find_element(:xpath, '//*[@id="nav-link-accountList-nav-line-1"]')
    end
      puts "Hello Name is displayed."
    end
  end

  def login_verification
    #Verifikasi
    hello_name = @driver.find_element(:xpath, "(//span[@id='nav-link-accountList-nav-line-1'])[1]")
    if hello_name.text == "Hello, Hastian"
      puts "You have successfully login."
    else
      puts "You have failed to login."
    end
    sleep(5)
  end

end