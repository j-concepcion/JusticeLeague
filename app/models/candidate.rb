class Candidate < ActiveRecord::Base

	POSITIONS = ["President", "Vice President", "Senator"] 
	has_many :votes, dependent: :destroy
	def name
	 [first_name, last_name].join(' ')
	end
end
