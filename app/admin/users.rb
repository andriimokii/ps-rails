ActiveAdmin.register User do
  permit_params :name, :email, :username, :admin, :password_digest
  before_action :set_user, only: [:show, :destroy, :edit, :update]

  controller do

    private

    def set_user
      @user = User.find_by!(username: permitted_params[:id])
    end
  end
end
