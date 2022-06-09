class NotificationsMailer < ApplicationMailer
  default from: 'x1c.info.mailer@gmail.com'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications_mailer.forgot_password.subject
  #
  def forgot_password
    # @greeting = "Hi"

    # mail to: "to@example.org"
    @token = params[:user].signed_id(purpose: "password_reset",
                                    expires_in: 30.minutes)

    mail(
      to: email_address_with_name(params[:user].email, params[:user].name),
      subject: "#{params[:user].name} - Forgot his password"
    )
  end

  def welcome_aboard
    mail(
      to: email_address_with_name(params[:user].email, params[:user].name),
      subject: "#{params[:user].name} - Welcome aboard!"
    )
  end

end
