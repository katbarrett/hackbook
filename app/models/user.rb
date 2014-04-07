class User < ActiveRecord::Base
	validates :email, presence: true
	validates :date_of_birth, presence: true
end
