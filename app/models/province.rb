class Province < ActiveRecord::Base
	has_many :cities
	has_many :barangays, :through => :cities
	has_many :users, :through => :barangays
end
