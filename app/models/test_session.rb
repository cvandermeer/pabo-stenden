class TestSession < ActiveRecord::Base
	### RELATIONS ###
	belongs_to :user
	belongs_to :test
end
