require 'selenium-webdriver'
require 'webdrivers'

Before do
  @driver = Selenium::WebDriver.for :chrome
  @driver.manage.window.maximize
  @wait = Selenium::WebDriver::Wait.new(:timeout => 15)
end

After do
  @driver.quit
end