require 'test_helper'

class QuestionsControllerTest < ActionController::TestCase
	setup :login_user, :set_question 

	test 'should get new' do
		get :new
		assert_response :success
	end

	test 'should be able to create question' do
		assert_difference('Question.count') do
			post :create, question: {title: @question.title, body: @question.body, user_id: @question.user}
		end
		assert_redirected_to question_path(assigns(:question)), 'Not redirected to question'
		assert_equal 'Je vraag is ingediend!', flash[:notice], 'Incorrect flash notice'
	end

	test 'should show question' do
    get :show, id: @question
    assert_response :success
  end

	test 'should get index' do
		get :index
		assert_response :success
	end

	test 'should get new question link' do
		get(:show, {id: @question})
		assert_response :success
	end

	private
		def login_user
			sign_in users(:one)
		end

		def set_question
			@question = questions(:question1)
		end
end