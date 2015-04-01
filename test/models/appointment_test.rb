require 'test_helper'

class AppointmentTest < ActiveSupport::TestCase
	test 'should not create appointment without any input' do
		appointment = Appointment.new
		assert_not appointment.save, 'Saved an appointment without input'
	end
end