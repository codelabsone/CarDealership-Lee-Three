class ApplicationController < ActionController::Base

    def require_admin
        unless current_user_admin?
            redirect_to root_url, alert: 'Unauthorized Access.'
        end
    end

    def require_signin
        unless current_user
            redirect_to new_session_path
        end
    end
    
    def current_user_admin?
        current_user && current_user.admin?
    end

    helper_method :current_user_admin?


    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    helper_method :current_user
end
