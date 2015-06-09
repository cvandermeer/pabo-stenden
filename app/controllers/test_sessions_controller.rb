class TestSessionsController < ApplicationController
	before_action :set_test_session

	def show
		@test_session_question = TestSessionQuestion.new
	end

	private

		def set_test_session
			@test_session = TestSession.find(params[:id])
		end

end