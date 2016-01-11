class User < ActiveRecord::Base
	has_many :emi_enquiries
	validates :email, presence: true, email: true
	validates_uniqueness_of :email 
end
