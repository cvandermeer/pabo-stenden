class Agenda < ActiveRecord::Base
	### RELATIONS ###
	belongs_to :user
	has_many :appointments
end
