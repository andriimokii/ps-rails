class NotificationsMailer < ApplicationMailer
  default from: 'andriimokii@gmail.com'

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

    mail to: params[:user].email
  end
end
