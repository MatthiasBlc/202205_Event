class ApplicationMailer < ActionMailer::Base
  default from: 'eventbrite.like@gmail.com'
  layout 'mailer'

  def welcome_email(user)
    @user = user
    @url = 'https://floating-forest-98897.herokuapp.com/'

    mail(to: @user.email, subject: 'Bienvenu chez nous !')    
  end
end
