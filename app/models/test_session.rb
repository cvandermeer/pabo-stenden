class TestSession < ActiveRecord::Base
	### RELATIONS ###
	belongs_to :user
	belongs_to :test
	has_many :test_session_questions
end
