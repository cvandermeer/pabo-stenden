class AgendasController < ApplicationController
	before_action :authenticate_user!
	before_action :set_agenda, only: [:edit, :show, :update, :destroy]

	def index
		@agendas = Agenda.all
	end

	def show
	end

	def new
		@agenda = Agenda.new
	end

	def create
		@agenda = Agenda.new(agenda_params)
		@agenda.user = current_user
		if @agenda.save
			redirect_to agendas_path, notice: 'Agenda aangemaakt'
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		
		if @agenda.update(agenda_params)
			redirect_to agendas_path, notice: 'Agenda aangepast'
		else
			render 'edit'
		end
	end

	def destroy
		@agenda.destroy
		redirect_to agendas_path
	end

	private
		def agenda_params
			params.require(:agenda).permit(:title, :color)
		end

		def set_agenda
			@agenda = Agenda.find(params[:id])
		end
end