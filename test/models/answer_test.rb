require 'test_helper'

class AnswerTest < ActiveSupport::TestCase
	test "should not create answer without input" do
		answer = Answer.new
		assert_not answer.save, "Saved an answer without any input"
	end
end