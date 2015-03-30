class AppointmentsController < AppointmentsController
	before_action :authenticate_user!

	def index
	end

	def show
	end

	def new
	end

	def create
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private
		def appointment_params

		end

		def set_appointment
			@appointment = Appointment.find(params[:id])
		end
end