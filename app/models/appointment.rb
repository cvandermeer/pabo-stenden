class Appointment < ActiveRecord::Base
	### RELATIONS ###
	belongs_to :agenda
  belongs_to :user

	### VALIDATIONS ###
	validates :title, presence: true
	validates :date, presence: true
	validates :start_time, presence: true
	validates :end_time, presence: true
	validates :agenda_id, presence: true
end