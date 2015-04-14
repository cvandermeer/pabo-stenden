class TestSessionQuestionsController < ApplicationController

	def create
		@test_session_question = TestSessionQuestion.new(test_session_question_params)
		if @test_session_question.save
			redirect_to root_path
		end
	end

	private
		def test_session_question_params
			params.require(:test_session_question).permit(:test_answer_id, :test_session_id)
		end
end