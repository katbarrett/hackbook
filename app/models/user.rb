class User < ActiveRecord::Base
	validates :email, presence: true
	validates :date_of_birth, presence: true

	validate :at_least_eighteen

	def at_least_eighteen
		if date_of_birth > 18.years.ago
			errors.add(:date_of_birth, "you must be over the age of 18")
		end	
	end

	def self.named(name)
		where(name: name)
	end
end
