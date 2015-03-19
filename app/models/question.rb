class Question < ActiveRecord::Base
	### RELATIONS ###
	has_many :answers, dependent: :destroy
	belongs_to :user

	### VALIDATIONS ###
	validates :title, presence: true
end
