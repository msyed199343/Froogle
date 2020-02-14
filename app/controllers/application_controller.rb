class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    helper_method :login_user! 
    helper_method :current_user
    helper_method :login_user!

    def login_user!(user)
        session[:session_token] = user.reset_session_token
    end

    def current_user
        return nil unless session[:session_token]
        @current_user ||= User.find_by(session_token: session[:session_token])
    end

    def require_login
        unless logged_in?
            flash[:notice] = ["You must be logged in to access this section"]
            redirect_to new_session_url
        end
    end

    def logged_in?
        !current_user.nil?
    end

    def logout_user!
        current_user.reset_session_token
        session[:session_token] = nil
        
    end

end
