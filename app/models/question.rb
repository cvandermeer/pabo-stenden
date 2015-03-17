class Question < ActiveRecord::Base
	### RELATIONS ###
	has_many :answers, dependent: :destroy

	### VALIDATIONS ###
	validates :title, presence: true
end
