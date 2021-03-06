class AnswersController < ApplicationController
	before_action :authenticate_user!

	def create
		@answer = Answer.new(answer_params)
		@answer.user = current_user
		if @answer.save
			redirect_to @answer.question, notice: "Antwoord is ingediend!"		
		else
			redirect_to :back
		end
	end 

	private

		def answer_params
			params.require(:answer).permit(:body, :question_id)
		end
end