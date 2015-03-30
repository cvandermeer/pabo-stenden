class Appointment < ActiveRecord::Base
	### RELATIONS ###

	### VALIDATIONS ###
	validates :title, presence: true
	validates :date, presence: true
	validates :start_time, presence: true
	validates :end_time, presence: true
end