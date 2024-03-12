require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  # driven_by :headless_chrome # Update this line
  driver = ENV['DRIVER'] ? ENV['DRIVER'].to_sym : :headless_chrome
  driven_by :selenium, using: driver, screen_size: [1400, 1400]
end
