class UserController < ApplicationController

	# display all users along with their emi enquires
	def show
		@user_info = User.get_user_info
		users = User.includes(:emi_enquiries).all
		users.each do |user|
			@user_info[user.id] = {}
			@user_info[user.id][:email] = user.email
			@user_info[user.id][:emi_enquiries] = user.emi_enquiries
		end
	end
end
