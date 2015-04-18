class Vote < ActiveRecord::Base
	belongs_to :user
	has_many :candidates
end
