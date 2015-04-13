class Test < ActiveRecord::Base
	### RELATIONS ###
	belongs_to :user
	has_many :test_questions

	### VALIDATIONS ###
	validates :title, presence: true
end
