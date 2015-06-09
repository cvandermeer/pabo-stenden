class TestAnswer < ActiveRecord::Base
	### RELATIONS ###
	belongs_to :test_question

	### VALIDATIONS ###
	validates :value, presence: true
end
