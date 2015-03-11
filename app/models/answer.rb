class Answer < ActiveRecord::Base
	### RELATIONS ###
	belongs_to :question

	### VALIDATIONS ###
	validates :body, presence: true

end
