require "test_helper"
require "socket"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :selenium, using: :chrome, screen_size: [1400, 1400]
  Capybara.register_driver :selenium_chrome_in_container do |app|
    Capybara::Selenium::Driver.new app,
      browser: :remote,
      url: "http://selenium_chrome:4444/wd/hub",
      capabilities: :chrome
  end
  driven_by :selenium_chrome_in_container
  Capybara.server_host = "0.0.0.0"
  Capybara.server_port = 4000
  Capybara.app_host = 'http://web:4000'
end
