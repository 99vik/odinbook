class UserMailer < ApplicationMailer
  def welcome_user(user)
    @user = user

    mail to: @user.email, 
         subject: "Account registered!"
  end
end
