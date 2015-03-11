require 'test_helper'

class QuestionsControllerTest < ActionController::TestCase
	test "should get new" do
		get :new
		assert_response :success
	end

	test "should be able to create question" do
		question = questions(:question1)
		assert_difference("Question.count") do
			post :create, question: {title: question.title, body: question.body}
		end
		assert_redirected_to question_path(assigns(:question)), "Not redirected to question"
		assert_equal "Je vraag is ingedient!", flash[:notice], "Incorrect flash notice"
	end

	test "should get index" do
		get :index
		assert_response :success
	end

	test "should get new question link" do
		question = questions(:question1)
		get(:show, {id: question})
		assert_response :success
	end
end