class Candidate < ActiveRecord::Base
	POSITIONS = ["President", "Vice President", "Senator"] 

 def name
  [first_name, last_name].join(' ')
 end
end
