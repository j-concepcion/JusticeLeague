class City < ActiveRecord::Base
	belongs_to :province
	has_many :barangays
	has_many :users, :through => :barangays
end
