class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :timeoutable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :votes
	belongs_to :barangay
	belongs_to :city
	belongs_to :province

   validates :first_name, :last_name, :email, presence: true
   validates :email, uniqueness: true
   validates_presence_of :password, :on => :create  
   validates_length_of :password, :minimum => 8, :allow_blank => false  
end
