ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

# 使用 minitest-reporters
require "minitest/reporters"
Minitest::Reporters.use!

class ActiveSupport::TestCase
  # 載入 Factory Girl 的 module
  include FactoryGirl::Syntax::Methods  

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
