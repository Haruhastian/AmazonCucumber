class SignUpAmazon

  def initialize(driver, wait)
    @driver = driver
    @wait = wait
  end

  def go_to_signup
    sign_up_hover = @driver.find_element(:id, 'nav-link-accountList')
    @driver.action.move_to(sign_up_hover).perform
    start_here = @driver.find_element(:link_text, 'Start here.')

    @wait.until do
      start_here
    end

    if start_here.displayed?
      puts "1. Bisa perform hover & munculin start here."
    else
      puts "1. Tidak bisa perform hover & gak bisa munculin start here."
    end

    start_here.click

    @wait.until do
      @driver.find_element(:xpath, "//h1[contains(.,'Create account')]")
    end
  end

  def filling_field(is_number)
    #Fill all the required fields
    your_name = @driver.find_element(:id, 'ap_customer_name')
    your_name.send_keys("Hastian Haru")
    mobile_email = @driver.find_element(:id, 'ap_email')
    if is_number
      mobile_email.send_keys("19863864910")
      puts "1. Sukses memasukkan nomor hp."
    else
      mobile_email.send_keys("mrsamaelmorningstar@gmail.com")
      puts "Sukses memasukkkan email address."
    end
    password = @driver.find_element(:id, 'ap_password')
    password.send_keys("haru1234")
    re_password = @driver.find_element(:id, 'ap_password_check')
    re_password.send_keys("haru1234")
    continue = @driver.find_element(:id, 'continue')
    continue.click

    binding.pry

    #Verify Email Address
    @wait.until do
      @driver.find_element(:xpath, '//h1[contains(.,"Verify email address")]') or
        @driver.find_element(:xpath, '//*[@id="a-page"]/div/div/div/div/div[1]/span')
    end

    otp_code = @driver.find_element(:id, 'cvf-input-code')
    if otp_code.displayed?
    end


    # email_used = @driver.find_element(:link_text, '//a[@href="javascript:void(0)"]')
    # otp_exist = @driver.find_element(:id, 'cvf-input-code')
    #
    # case page
    # when email_used
    #   @wait.until do
    #     email_used.displayed?
    #   end
    #   email_used.click
    # else otp_exist
    # @wait.until do
    #   otp_exist.displayed?
    # end
    # otp_exist.click
    # # binding.pry
    # end

  end

  def verified_email_input(is_number = true)
    #Fill all the required fields
    @your_name = @driver.find_element(:id, 'ap_customer_name')
    @your_name.send_keys("Hastian Haru")
    mobile_email = @driver.find_element(:id, 'ap_email')
    if is_number
      mobile_email.send_keys("19863864910")
      puts "1. Sukses memasukkan nomor hp."
    else
      mobile_email.send_keys("hzbchh@gmail.com")
      puts "Sukses memasukkkan email address."
    end
    password = @driver.find_element(:id, 'ap_password')
    password.send_keys("haru1234")
    re_password = @driver.find_element(:id, 'ap_password_check')
    re_password.send_keys("haru1234")
    continue = @driver.find_element(:id, 'continue')
    continue.click

  end

  def create_already
    #Verifikasi Email already in use
    if @driver.find_element(:xpath, '//h4[contains(.,"Email address already in use")]').displayed?
      puts "Email already in use existed."
    end
    create_this_email = @driver.find_element(:xpath, '//*[@id="authportal-main-section"]/div[2]/div/div[2]/div[2]/span/a')
    create_this_email.click

    #Wait for the alert message pops up
    @wait.until do
      @driver.find_element(:xpath, "//h4[contains(.,'Are you sure you don't already have an Amazon account?')]")
    end

    create_anyway = @driver.find_element(:link_text, 'Create a new account anyway')
    create_anyway.click

    @wait.until do
      @your_name.displayed?
    end

  end

  # Probably making the new def for OTP
  # Testing for the remote master branch
  # Updating from the local branch haru

end