class WelcomeMailer < ApplicationMailer
  def notify(user)
    @user = user

    mail to: user.email, subject: "Bienvenido a suprabikes"
  end
end
