# frozen_string_literal: true

ActiveAdmin.register User do
  permit_params :name, :email, :username, :admin, :password, :password_confirmation
  before_action :set_user, only: [:show, :destroy, :edit, :update]

  scope :all
  scope :by_name
  scope :not_admins

  controller do

    private

    def set_user
      @user = User.find_by!(username: permitted_params[:id])
    end
  end
end
