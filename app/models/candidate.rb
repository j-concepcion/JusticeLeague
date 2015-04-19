class Candidate < ActiveRecord::Base
	acts_as_votable
	POSITIONS = ["President", "Vice President", "Senator"] 
	def name
	 [first_name, last_name].join(' ')
	end
end
