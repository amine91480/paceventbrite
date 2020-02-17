class UserMailer < ApplicationMailer
  default from: 'no-reply.pacevent@yopmail.com'
 
  def welcome_email(user)
    @user = user 
    @url  = 'https://paceventbrite.herokuapp.com/'
    mail(to: @user.email, subject: 'Bienvenue sur PAC EventBrite !')
  end

  def new_attendance_email(attendance)
    @attendance = attendance
    @url = 'https://paceventbrite.herokuapp.com/'
    mail(to: @attendance.admin.email, subject: 'Nouvelle Participation !')
  end
end
