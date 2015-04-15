class Barangay < ActiveRecord::Base
	belongs_to :city
	has_many :users
end
