class AppointmentsController < AppointmentsController
	before_action :authenticate_user!
	before_action :set_appointment, only: [:edit, :show, :update, :destroy]

	def index
		@appointments = Appointment.all
	end

	def show
	end

	def new
		@appointment = Appointment.new
	end

	def create
		@appointment = Appointment.new(appointment_params)
		if @appointment.save
			redirect_to appointments_path, notice: 'Afgespraak aangemaakt'
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		
		if @appointment.update(appointment_params)
			redirect_to appointments_path, notice: 'Afgespraak aangepast'
		else
			render 'edit'
		end
	end

	def destroy
		@appointment.destroy
		redirect_to appointments_path
	end

	private
		def appointment_params
			params.require(:appointment).permit(:title, :body, :date, :start_time, :end_time, :location)
		end

		def set_appointment
			@appointment = Appointment.find(params[:id])
		end
end