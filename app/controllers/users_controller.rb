class UsersController < ApplicationController
    before_action :require_signin, except: [:new, :create]
    before_action :require_correct_user, only: [:edit, :update]
    before_action :require_admin, only: [:destroy]
    before_action :set_user, only: [:show, :destroy]

    def index
        @users = User.not_admins
    end

    def show
        @reviews = @user.reviews
        @favorite_movies = @user.favorite_movies
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            NotificationsMailer.with(user: @user).welcome_aboard.deliver_later
            redirect_to @user, notice: "Thanks for signing up! We've sent
                additional information on your email."
        else
            render :new
        end
    end

    def edit

    end

    def update
        if @user.update(user_params)
            redirect_to @user, notice: "Account successfully updated!"
        else
            render :edit
        end
    end

    def destroy
        @user.destroy
        redirect_to(movies_url, alert: "Account successfully deleted!", 
            status: :see_other)
    end

    private

    def user_params
        params.require(:user).permit(:name, :username, :email, :password,
            :password_confirmation)
    end

    def require_correct_user
        set_user
        redirect_to root_url, status: :see_other unless current_user?(@user)
    end

    def set_user
        @user = User.find_by!(username: params[:id])
    end
end
