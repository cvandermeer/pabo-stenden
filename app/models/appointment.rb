class Appointment < ActiveRecord::Base
	### RELATIONS ###
	belongs_to :agenda

	### VALIDATIONS ###
	validates :title, presence: true
	validates :date, presence: true
	validates :start_time, presence: true
	validates :end_time, presence: true
	validates :agenda_id
end