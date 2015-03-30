require 'test_helper'

class AnswersControllerTest < ActionController::TestCase
	setup :login_user, :set_question 

	test "should be able to create answer" do
		assert_difference("Answer.count") do
			post :create, answer: {body: @answer.body, question_id: @answer.question, user: @answer.user}
		end
		assert_equal "Antwoord is ingediend!", flash[:notice], "Incorrect flash notice"
	end

	private
		def login_user
			sign_in users(:one)
		end

		def set_question
			@answer = answers(:answer1)
		end
end