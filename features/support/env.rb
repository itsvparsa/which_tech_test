require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"
require "site_prism"
require "byebug"
require 'capybara/rspec'

Capybara.configure do |config|
  config.default_driver = :firefox
end

Capybara.register_driver(:firefox) do |app|
  Capybara::Selenium::Driver.new(app, :browser => :firefox)
end
