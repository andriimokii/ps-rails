class SessionsController < ApplicationController
    def new

    end

    def create
        # fail
        user = User.find_by(email: params[:email_or_username]) ||
                    User.find_by(username: params[:email_or_username])
        
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to user, notice: "Welcome back, #{user.name}!"
        else
            flash.now[:alert] = "Invalid email/password combination!"
            render :new
        end
    end

    def destroy
        session[:user_id] = nil
        redirect_to root_path, notice: "Successfully Signed Out!"
    end
end