class UserMailer < ApplicationMailer

  def roster_email(user)
    @user = user
    mail(to: @user, subject: "You've been invited to join a team!" )
  end
end
