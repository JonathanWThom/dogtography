class ContactMailer < ApplicationMailer
  default from: 'dogtography@gmail.com'

 def welcome_email(user)
   @user = user
   @url  = 'https://dogtography.herokuapp.com'
   mail(to: @user.email, subject: 'Welcome to Dogtography')
 end
end
