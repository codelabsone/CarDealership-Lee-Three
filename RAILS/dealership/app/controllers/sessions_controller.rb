class SessionsController < ApplicationController

    def new

    end

    def create
        if user = User.authenticate(params[:email], params[:password])
            session[:user_id] = user.id
            flash[:notice] = 'Welcome back!'
            redirect_to user
        else
            flash.now[:alert] = 'Invalid information.'
            render :new
        end
    end

    def destroy
        session[:user_id] = nil
        redirect_to root_path, notice: 'Successfully signed out.'
    end

private

end
