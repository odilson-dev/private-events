class UserMailer < ApplicationMailer
    default from: 'no-reply@example.com'

  def welcome_email
    @user = params[:user]
    @url  = 'http://localhost:3000/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome WebSite powered by Rails')
  end
end
