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

private

    def self.authenticate(email, password)
        user = User.find_by(email: email)
        user && user.authenticate(password)
    end
end
