# require 'selenium-webdriver'
# require 'capybara'
# require 'capybara/cucumber'

# Capybara.configure do |config|
#     Capybara.default_driver = :chrome
#     config.default_driver = :selenium # => chrome
# end

# Capybara.default_max_wait_time = 10

require 'rubygems'
require 'capybara/cucumber'
require 'selenium/webdriver'
require 'site_prism'

#Retirando esse register e o default driver eu recebo erro de "rack test requires a rack application"
  Capybara.register_driver :chrome do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
  end

  Capybara.default_driver = :chrome

