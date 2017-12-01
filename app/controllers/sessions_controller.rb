class SessionsController < ApplicationController

    def login
        user = User.find_by_email(params[:email])
        if user && user.authenticate(params[:password])
            render json: user.access_token
        else
            render status: 403
        end        
    end
end
