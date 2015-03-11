class AnswersController < ApplicationController

	def create
		@answer = Answer.new(answer_params)
		if @answer.save
			redirect_to @answer.question, notice: "Antwoord is ingedient!"		
		else
			redirect_to :back
		end
	end 

	private

		def answer_params
			params.require(:answer).permit(:body, :question_id)
		end
end