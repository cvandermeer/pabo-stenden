require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
	test "should not post question without any input" do
		question = Question.new
		assert_not question.save, "Saved a question without input"
	end
end