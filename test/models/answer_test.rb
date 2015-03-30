require 'test_helper'

class AnswerTest < ActiveSupport::TestCase
	test 'should not post answer without any input' do
		answer = Answer.new
		assert_not answer.save, 'Saved a answer without input'
	end
end