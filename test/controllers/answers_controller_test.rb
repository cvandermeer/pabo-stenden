require 'test_helper'

class AnswersControllerTest < ActionController::TestCase
	test "should be able to create answer" do
		answer = answers(:answer1)
		assert_difference("Answer.count") do
			post :create, answer: {body: answer.body, question_id: answer.question}
		end
		assert_equal "Antwoord is ingedient!", flash[:notice], "Incorrect flash notice"
	end
end