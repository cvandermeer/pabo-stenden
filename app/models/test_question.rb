class TestQuestion < ActiveRecord::Base
	### RELATIONS ###
	belongs_to :test
	has_many :test_answers, dependent: :destroy
	
	### VALIDATIONS ###
	validates :title, presence: true
	#validates :correct_answer_id, presence: true
end
