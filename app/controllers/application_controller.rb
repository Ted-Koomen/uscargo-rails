class ApplicationController < ActionController::API
    
    def current_user
        @current_user ||= User.find_by(access_token:session[:access_token]) if session[:access_token]
    end

    def authorize
        redirect_to '/login' unless current_user
    end
  
end
