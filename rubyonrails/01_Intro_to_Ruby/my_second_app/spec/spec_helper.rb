require 'rspec'
require 'capybara'
require 'capybara/dsl'
require 'capybara/rails'
require 'capybara/poltergeist'

RSpec.configure do |config|
  config.include Capybara::DSL
end