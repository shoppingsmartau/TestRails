class ApplicationController < ActionController::Base
    
    helper_method :current_user, :logged_in?, :user_admin?
    def current_user
        
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
        
    end
    
    def logged_in?
        
        !!current_user 
        
    end
    
    def require_user
        if !logged_in?
            flash[:alert] = "Please login to perfom the required action"
            redirect_to login_path
        end
    end
    
    def user_admin?
        
        !!current_user.admin 
        
    end
    

end
