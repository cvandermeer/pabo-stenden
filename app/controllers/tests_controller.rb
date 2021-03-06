class TestsController < ApplicationController
	before_action :authenticate_user!
	before_action :set_test, only: [:show, :edit, :update, :destroy, :take_test]
	before_action :teacher_check, except: [:show, :index]

	def index
		@tests = Test.all 
	end

	def show
	end

	def new
		@test = Test.new
	end

	def create
		@test = Test.new(test_params)
		@test.user = current_user
		if @test.save
			redirect_to @test, notice: 'Test is aangemaakt'
		else
			render :new
		end
	end

	def edit
	end

	def update
		if @test.update(test_params)
			redirect_to @test, notice: 'Test is aangepast'
		else
			render :edit
		end
	end

	def destroy
		@test.destroy	
		redirect_to tests_path, notice: 'Test is gedelete'
	end

	def take_test
		@test_session = TestSession.new
		@test_session.test = @test
		@test_session.user = current_user
		if @test_session.save 
			redirect_to @test_session
		else
			redirect_to @test
		end
	end


	private

		def test_params
			params.require(:test).permit(:title, :body, test_questions_attributes: [:id, :title, :_destroy, test_answers_attributes: [:id, :value, :correct_answer, :_destroy]])
		end

		def set_test
			@test = Test.find(params[:id])
		end

		def teacher_check
			if !current_user.teacher
				redirect_to tests_path, notice: 'Je bent niet aangesteld als docent'
			end
		end 

end