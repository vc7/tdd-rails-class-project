require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
	
	# 執行階段，會被轉換成 def test_should_get_contact_page
	test "should get contact page" do
		get :contact
		assert_response :success
	end
end
