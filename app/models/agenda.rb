class Agenda < ActiveRecord::Base
	### RELATIONS ###
	belongs_to :user
	has_many :appointments

	### VALIDATIONS ###
	validates :title, presence: true
	validates :color, presence: true
	validates :user, presence: true
end
