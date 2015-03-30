class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable :registerable
  devise :database_authenticatable,
         :rememberable, :trackable, :validatable, :registerable
  ### RELATIONS ###
  has_many :questions
  has_many :answers
  has_many :agendas
end
