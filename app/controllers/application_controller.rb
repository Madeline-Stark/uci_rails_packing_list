class ApplicationController < ActionController::Base
    helper_method :logged_in?, :current_user

    def logged_in?
        !!current_user
    end 

    def current_user 
        @current_user ||= User.find_by(id: session[:user_id])
    end 

    def require_login
        if !logged_in?
            redirect_to login_path
        end
    end
end
