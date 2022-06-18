# frozen_string_literal: true

class PasswordResetsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:email])

    @user.present? && NotificationsMailer.with(user: @user).forgot_password.deliver_later

    redirect_to signin_url, notice: 'Password reset URL was sent to your email'
  end

  def edit
    @user = User.find_signed!(params[:id], purpose: 'password_reset')
  rescue ActiveSupport::MessageVerifier::InvalidSignature
    redirect_to signin_url, alert: 'Your token has expired. Please, try again!'
  end

  def update
    @user = User.find_signed!(params[:id], purpose: 'password_reset')
    if @user.update(password_params)
      redirect_to signin_url, notice: 'Your password was changed!'
    else
      render :edit
    end
  end

  private

  def password_params
    params.require(:user).permit(:password, :password_confirmation)
  end
end
