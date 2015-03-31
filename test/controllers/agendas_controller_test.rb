require 'test_helper'

class AgendasControllerTest < ActionController::TestCase
	setup :login_user, :set_agenda

	test 'Should get index' do
		get :index
		assert_response :success
	end

	test 'should get new' do
		get :new
		assert_response :success
	end

	test 'should create agenda' do
		assert_difference('Agenda.count') do
			post :create, agenda: { title: @agenda.title, color: @agenda.color, user_id: @agenda.user } 
		end
		assert_redirected_to agendas_path
	end

	test "should get edit" do
    get :edit, id: @agenda
    assert_response :success
  end

  test "should update agenda" do
    patch :update, id: @agenda, agenda: { title: @agenda.title, color: @agenda.color }
    assert_redirected_to agendas_path
  end

	private
		def login_user
			sign_in users(:one)
		end

		def set_agenda
			@agenda = agendas(:agenda1)
		end
end