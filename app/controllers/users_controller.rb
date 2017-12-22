class UsersController < ApplicationController
	def new
	end
	def create
		@user = User.new(user_params)
		puts @user
		if @user.save
			emails = Email.all
			emails.each do |val|
				UserMailer.cruise_reg(@user, val.address).deliver_now
			end
			flash[:errors] = "Thank you, your form has been sent!"
		else
			flash[:errors] = "Something went wrong, please try again"
		end
		redirect_to '/'
		# mailers go here
	end
	def user_params
  		params.require(:user).permit(:first, :second, :first_birth, :second_birth, :email, :phone, :address, :city, :state, :zip, :deposit, :payment_type, :payment_method, :cat, :alt_phone) 
	end
end
