class User < ActiveRecord::Base
	belongs_to :barangay
	belongs_to :city
	belongs_to :province

end
