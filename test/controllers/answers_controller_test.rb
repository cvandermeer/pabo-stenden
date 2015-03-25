require 'test_helper'

class AnswersControllerTest < ActionController::TestCase
	test "should be able to create answer" do
		sign_in users(:one)
		answer = answers(:answer1)
		assert_difference("Answer.count") do
			post :create, answer: {body: answer.body, question_id: answer.question}
		end
		assert_equal "Antwoord is ingediend!", flash[:notice], "Incorrect flash notice"
	end
end