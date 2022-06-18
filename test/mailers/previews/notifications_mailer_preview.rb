# frozen_string_literal: true

# Preview all emails at http://localhost:3000/rails/mailers/notifications_mailer
class NotificationsMailerPreview < ActionMailer::Preview
  # Preview this email at http://localhost:3000/rails/mailers/notifications_mailer/forgot_password
  def forgot_password
    # NotificationsMailer.forgot_password
    NotificationsMailer.with(user: User.first).forgot_password
  end
end
