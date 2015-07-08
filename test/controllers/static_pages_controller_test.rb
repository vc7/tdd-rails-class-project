require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
	
	# 執行階段，會被轉換成 def test_should_get_contact_page
	test "should get contact page" do
		get :contact
		assert_response :success
		assert_select 'title', 'Hello, Ruby'
		assert_select 'h1', 'Ruby on Rails'
	end

	# 練習
	test "should get help page" do
		get :help
		assert_response :success
		assert_select 'title', 'Help Us'
		assert_select 'h1', 'Help Us'
	end
end
