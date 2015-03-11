require 'test_helper'

class AnswersControllerTest < ActionController::TestCase
	test "should get new" do
		get :new
		assert_response :success
	end


	test "should have a new h1" do
		get :new
		assert_select "h1", "Stel je vraag"
	end
end