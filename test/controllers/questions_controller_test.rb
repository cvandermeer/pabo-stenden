require 'test_helper'

class QuestionsControllerTest < ActionController::TestCase
	test "should get new" do
		get :new
		assert_response :success
	end

	test "should be able to create question" do
		question = questions(:question1)
		assert_difference("Question.count") do
			post :create, question: {title: question.title, body: question.description}
		end
		assert_redirected_to new_question_path "Was not redirected to new question path"
		assert_equal "Je vraag is aangemaakt!", flash[:notice], "Incorrect flash notice"
	end
end