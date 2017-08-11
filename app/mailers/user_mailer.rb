class UserMailer < ApplicationMailer
  def cruise_reg(user, email)
    @user = user
	    mail(to: email, subject: "Disco Biscuit Cruise Registration")
  end
end
