class Answer < ActiveRecord::Base
	### RELATIONS ###
	belongs_to :question
	belongs_to :user
	### VALIDATIONS ###
	validates :body, presence: true
	validates :user, presence: true

end
