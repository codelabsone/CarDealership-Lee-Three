class UsersController < ApplicationController

    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to @user, notice: 'Thanks for signing up!'
        else
            render :new
        end
    end

    def edit
        @user = User.find(params[:id])
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        session[:user_id] = nil
        redirect_to root_path, alert: 'Account Deleted'
    end

private

    def user_params
        params.require(:user).
        permit(:name, :email, :password, :password_confirmation)
    end
end
