require 'rspec'
require 'capybara'
require 'capybara/dsl'
require 'capybara/poltergeist'

RSpec.configure do |config|
 config.fixture_path = "#{::Rails.root}/spec/fixtures"
 config.use_transactional_fixtures = true
 config.infer_base_class_for_anonymous_controllers = false
 config.order = "random" 
 config.include Capybara::DSL
end