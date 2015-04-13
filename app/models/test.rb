class Test < ActiveRecord::Base
	### RELATIONS ###
	belongs_to :user
	has_many :test_questions, dependent: :destroy

	### VALIDATIONS ###
	validates :title, presence: true

	

end
