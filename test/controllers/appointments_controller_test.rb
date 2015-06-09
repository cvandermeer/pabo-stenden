require 'test_helper'

class AppointmentsControllerTest < ActionController::TestCase
	setup :login_user, :set_appointment

	test 'Should get index' do
		get :index
		assert_response :success
	end

	test 'should get new' do
		get :new
		assert_response :success
	end

	test 'should create appointment' do
		assert_difference('Appointment.count') do
			post :create, appointment: { title: @appointment.title, body: @appointment.body, agenda_id: @appointment.agenda, location: @appointment.location, date: @appointment.date, start_time: @appointment.start_time, end_time: @appointment.end_time } 
		end
		assert_redirected_to appointments_path
	end

	test "should get edit" do
    get :edit, id: @appointment
    assert_response :success
  end

  test "should update appointment" do
    patch :update, id: @appointment, appointment: { title: @appointment.title, body: @appointment.body }
    assert_redirected_to appointments_path
  end

	private
		def login_user
			sign_in users(:one)
		end

		def set_appointment
			@appointment = appointments(:appointment1)
		end
end