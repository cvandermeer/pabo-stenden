class Question < ActiveRecord::Base
	### RELATIONS ###
	has_many :answers

	### VALIDATIONS ###
	validates :title, presence: true
end
